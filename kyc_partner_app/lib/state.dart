import 'dart:convert';

import 'package:cryptography/cryptography.dart';
import 'package:flutter/material.dart';
import 'package:kyc_app_client/kyc_app_client.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:kyc_partner_app/model/kyc_model.dart';
import 'package:solana/solana.dart';

class PartnerAppState extends ChangeNotifier {
  final PartnerServiceClient _backendClient;
  late KycPartnerClient _partnerClient;

  List<KycUsers> _users = [];
  bool _isLoading = false;

  PartnerAppState(this._backendClient);

  List<KycUsers> get users => _users;
  bool get isLoading => _isLoading;

  late Ed25519HDPublicKey _publicKey;

  Future<void> init() async {
    final account = await Ed25519HDKeyPair.fromMnemonic(
      'banana leopard force prepare culture smile broken fade jeans uniform royal song',
      change: 0,
      account: 0,
    );

    final keyPair = await account.extract();
    _publicKey = keyPair.publicKey;

    _partnerClient = KycPartnerClient(
        authKeyPair: SimpleKeyPairData(
      keyPair.bytes,
      publicKey: SimplePublicKey(
        keyPair.publicKey.bytes,
        type: KeyPairType.ed25519,
      ),
      type: KeyPairType.ed25519,
    ));

    fetch();
  }

  Future<void> fetch() async {
    _isLoading = true;
    notifyListeners();

    try {
      final data = await _backendClient.fetchUserData(
          FetchPartnerUsersRequest(partnerPk: _publicKey.toBase58()));

      _users = data.users
          .map((e) => KycUsers(
                userPK: e.userPk,
                secretKey: e.secretKey,
                partnerToken: e.partnerToken,
              ))
          .toList();
    } catch (e) {
      print('Error fetching public keys: $e');
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<KycUserInfo> fetchUser(KycUsers user) async {
    await _partnerClient.init(
      partnerToken: user.partnerToken,
      secretKey: user.secretKey,
    );
    final data = await _partnerClient.getData(
      keys: [
        DataInfoKeys.firstName,
        DataInfoKeys.middleName,
        DataInfoKeys.lastName,
        DataInfoKeys.dateOfBirth,
        DataInfoKeys.countryCode,
        DataInfoKeys.idType,
        DataInfoKeys.idNumber
      ],
      userPK: user.userPK,
      secretKey: user.secretKey,
    );
    final selfie = await _partnerClient.download(
      key: DataFileKeys.photo,
      userPK: user.userPK,
      secretKey: user.secretKey,
    );
    final kyc = KycUserInfo.fromDataInfoKeys(data);

    final result = await _partnerClient.getValidationResult(
      key: ValidationResultKeys.smileId,
      validatorPK: 'HHV5joB6D4c2pigVZcQ9RY5suDMvAiHBLLBCFqmWuM4E',
      secretKey: user.secretKey,
    );

    return kyc.copyWith(selfie: base64Encode(selfie), smileIdResult: result);
  }
}
