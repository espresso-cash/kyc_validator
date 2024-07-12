import 'dart:convert';

import 'package:cryptography/cryptography.dart' hide SecretBox;
import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/src/features/validator/models/kyc_model.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:solana/base58.dart';

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

    _client = KycPartnerClient(authKeyPair: keyPair);

    _authPublicKey = await keyPair
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);
  }

  Future<void> generateAuthToken(String partnerToken, String secretKey) async {
    await _client.init(partnerToken: partnerToken, secretKey: secretKey);
  }

  Future<Map<String, String>> fetchUserInfo({
    required List<DataInfoKeys> keys,
    required String secretKey,
    required String userPK,
  }) async {
    final data = await _client.getData(
      keys: keys,
      userPK: userPK,
      secretKey: secretKey,
    );

    return data;
  }

  Future<KycUserInfo> fetchDataForSmile({
    required String secretKey,
    required String userPK,
  }) async {
    final data = await _client.getData(
      keys: [
        DataInfoKeys.jobId,
        DataInfoKeys.firstName,
        DataInfoKeys.middleName,
        DataInfoKeys.lastName,
        DataInfoKeys.dateOfBirth,
        DataInfoKeys.countryCode,
        DataInfoKeys.idType,
        DataInfoKeys.idNumber
      ],
      userPK: userPK,
      secretKey: secretKey,
    );

    final selfie = await _client.download(
      key: DataFileKeys.photo,
      userPK: userPK,
      secretKey: secretKey,
    );

    final kyc = KycUserInfo.fromDataInfoKeys(data);
    return kyc.copyWith(selfie: base64Encode(selfie));
  }

  Future<void> setValidationResult(String message) async {
    await _client.setValidationResult(
      key: ValidationResultKeys.smileId,
      value: message,
    );
  }

  Future<void> validateField(ValidationResultKeys key, String value) async {
    await _client.validateField(key, value);
  }
}
