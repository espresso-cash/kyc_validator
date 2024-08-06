import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:solana/solana.dart';

import '../kyc/model/kyc_model.dart';

const validatorAuthPk = 'HHV5joB6D4c2pigVZcQ9RY5suDMvAiHBLLBCFqmWuM4E';
const partnerAuthPk = '5PcfzhA3saCwcJjRstKyytMwwxeK1XJt48WGUhZEyecp';

class WalletAppState extends ChangeNotifier {
  Ed25519HDKeyPair? get wallet => _wallet;
  String get authPublicKey => _authPublicKey;
  String get rawSecretKey => _rawSecretKey;
  String get validatorToken => _validatorToken;
  String get partnerToken => _partnerToken;
  PartnerModel? get partnerInfo => _partnerInfo;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String get userPublicKey => _userPublicKey;

  Ed25519HDKeyPair? _wallet;

  late String _authPublicKey = '';
  String _validatorToken = '';
  String _partnerToken = '';
  late String _rawSecretKey = '';
  String _userPublicKey = '';

  PartnerModel? _partnerInfo;
  String? _email;
  String? _phoneNumber;

  late KycUserClient _client;

  Future<void> createWallet() async {
    _validatorToken = '';
    _partnerToken = '';
    _wallet = await Ed25519HDKeyPair.random();

    _client = KycUserClient(
      sign: (data) async {
        final signature = await _wallet!.sign(data);
        return signature;
      },
    );

    final publicKey = _wallet!.publicKey.toString();

    await _client.init(walletAddress: publicKey);

    _userPublicKey = publicKey;
    _rawSecretKey = _client.rawSecretKey;
    _authPublicKey = _client.authPublicKey;

    notifyListeners();
  }

  Future<void> generateValidatorToken(String partnerPK) async {
    _validatorToken = await _client.generatePartnerToken(partnerPK);

    notifyListeners();
  }

  Future<void> generatePartnerToken(String partnerPK) async {
    _partnerToken = await _client.generatePartnerToken(partnerPK);

    notifyListeners();
  }

  Future<void> updateInfo({
    required KycUserInfo data,
    required File photo,
  }) async {
    await _client.setData(data: data.toKycModel());
    await _client.upload(
      file: photo.readAsBytesSync(),
      key: DataFileKeys.photo,
    );
  }

  Future<void> updateEmail(String value) async {
    _email = value;
    await _client.setData(data: {DataInfoKeys.email: value});
    notifyListeners();
  }

  Future<void> updateNumber(String value) async {
    _phoneNumber = value;
    await _client.setData(data: {DataInfoKeys.phone: value});
    notifyListeners();
  }
}
