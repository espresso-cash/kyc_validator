import 'dart:io';

import 'package:cryptography/cryptography.dart';
import 'package:flutter/foundation.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';

const validatorAuthPk = 'HHV5joB6D4c2pigVZcQ9RY5suDMvAiHBLLBCFqmWuM4E';
const partnerAuthPk = '5PcfzhA3saCwcJjRstKyytMwwxeK1XJt48WGUhZEyecp';
const validatorSeed = '8ui6TQMfAudigNuKycopDyZ6irMeS7DTSe73d2gzv1Hz';

class WalletAppState extends ChangeNotifier {
  Ed25519HDKeyPair? get wallet => _wallet;
  String get authPublicKey => _authPublicKey;
  String get validatorPK => _validatorPK;
  String get rawSecretKey => _rawSecretKey;
  PartnerModel? get partnerInfo => _partnerInfo;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String get userPublicKey => _userPublicKey;

  Ed25519HDKeyPair? _wallet;

  late String _authPublicKey = '';
  late String _validatorPK = '';
  late String _rawSecretKey = '';
  String _userPublicKey = '';

  PartnerModel? _partnerInfo;
  String? _email;
  String? _phoneNumber;

  late KycUserClient _client;

  Future<void> createWallet() async {
    _wallet = await Ed25519HDKeyPair.random();

    _client = KycUserClient(
      sign: (data) async {
        final signature = await _wallet!.sign(data);
        return signature;
      },
      baseUrl: 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app/',
    );

    final publicKey = _wallet!.publicKey.toString();

    await _client.init(walletAddress: publicKey);

    _userPublicKey = publicKey;
    _rawSecretKey = _client.rawSecretKey;
    _authPublicKey = _client.authPublicKey;

    await _initValidator();

    notifyListeners();
  }

  Future<void> _initValidator() async {
    final validatorKeyPair =
        await Ed25519().newKeyPairFromSeed(base58decode(validatorSeed));

    _validatorPK = await validatorKeyPair
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);
  }

  Future<void> grantPartnerAccess(String partnerPK) async {
    await _client.grantPartnerAccess(partnerPK);
    notifyListeners();
  }

  Future<void> updateInfo({
    required V1UserData data,
    required File photo,
  }) async {
    await _client.setData(
      data: data,
      selfie: photo.readAsBytesSync(),
      idCard: null,
    );
  }

  Future<void> updateEmail(String value) async {
    _email = value;
    await _client.setData(
      data: V1UserData(
        email: value,
      ),
      selfie: null,
      idCard: null,
    );
    notifyListeners();
  }

  Future<void> updateNumber(String value) async {
    _phoneNumber = value;
    await _client.setData(
      data: V1UserData(
        phone: value,
      ),
      selfie: null,
      idCard: null,
    );
    notifyListeners();
  }
}
