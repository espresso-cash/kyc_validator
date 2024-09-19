import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart' hide SecretBox;
import 'package:injectable/injectable.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:solana/base58.dart';

import '../models/kyc_model.dart';

// hardcoded seed
final validatorSeed = '8ui6TQMfAudigNuKycopDyZ6irMeS7DTSe73d2gzv1Hz';

@singleton
class PartnerKycService {
  SimpleKeyPair? get authKeyPair => _authKeyPair;
  String get authPublicKey => _authPublicKey;

  SimpleKeyPair? _authKeyPair;
  String _authPublicKey = '';

  late KycPartnerClient _client;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final keyPair =
        await Ed25519().newKeyPairFromSeed(base58decode(validatorSeed));

    _client = KycPartnerClient(
      authKeyPair: keyPair,
      baseUrl: 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app/',
    );

    await _client.init();

    _authPublicKey = await keyPair
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);
  }

  Future<KycUserInfo?> fetchUserInfo({
    required String secretKey,
    required String userPK,
  }) async {
    try {
      final data = await _client.getData(
        userPK: userPK,
        secretKey: secretKey,
      );

      final selfie = data['photoSelfie'];
      final id = data['photoIdCard'];

      return KycUserInfo.fromJson(data).copyWith(
        photoSelfie: (selfie is Uint8List) ? selfie : null,
        photoIdCard: (id is Uint8List) ? id : null,
      );
    } on Exception {
      //ignore, user not registered

      return null;
    }
  }

  Future<void> setValidationResult({
    required String message,
    required String userPK,
    required String secretKey,
  }) async {
    await _client.setValidationResult(
      value: V1ValidationData(kycSmileId: message),
      userPK: userPK,
      secretKey: secretKey,
    );
  }

  Future<void> validateField({
    required V1ValidationData value,
    required String userPK,
    required String secretKey,
  }) async {
    await _client.validateField(
      value: value,
      userPK: userPK,
      secretKey: secretKey,
    );
  }
}
