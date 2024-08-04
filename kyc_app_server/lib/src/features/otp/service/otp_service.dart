import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/src/features/twilio/client.dart';
import 'package:kyc_app_server/src/features/validator/service/kyc_client.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import '../../../../config.dart';
import '../models/otp_message.dart';

@singleton
class OtpService {
  OtpService(this._twilioApiClient, this._kycClient);

  final TwilioApiClient _twilioApiClient;
  final PartnerKycService _kycClient;

  static final Map<DataInfoKeys, OtpMessage> _otpMemoryStorage = {};

  Future<void> sendOtpByEmail({
    required String partnerToken,
    required String secretKey,
    required String userPK,
  }) async {
    final otp = _generateVerificationCode();
    final otpMessage = OtpMessage(
      identifier: DataInfoKeys.email,
      otp: otp,
      expiry: DateTime.now().add(const Duration(minutes: 5)),
    );
    _otpMemoryStorage[DataInfoKeys.email] = otpMessage;
    await _kycClient.generateAuthToken(partnerToken, secretKey);
    final data = await _kycClient.fetchUserInfo(
      keys: [DataInfoKeys.email],
      secretKey: secretKey,
      userPK: userPK,
    );

    final receiver = data[DataInfoKeys.email.value] ?? '-';

    final smtpServer = SmtpServer(
      smtpHost,
      port: smtpPort,
      username: smtpUsername,
      password: smtpPassword,
    );

    final message = Message()
      ..from = const Address('vlad@espressocash.com', 'Espresso Cash')
      ..recipients.add(receiver)
      ..subject = 'Email verification'
      ..text = 'Your verification code is: $otp';

    try {
      final sendReport = await send(message, smtpServer);
      print('OTP sent: ${sendReport.toString()}');
    } on MailerException catch (e) {
      print('OTP not sent. \n$e');
    }
  }

  Future<void> sendOtpBySms({
    required String partnerToken,
    required String secretKey,
    required String userPK,
  }) async {
    final otp = _generateVerificationCode();
    final otpMessage = OtpMessage(
      identifier: DataInfoKeys.phone,
      otp: otp,
      expiry: DateTime.now().add(const Duration(minutes: 5)),
    );
    _otpMemoryStorage[DataInfoKeys.phone] = otpMessage;

    final data = await _kycClient.fetchUserInfo(
      keys: [DataInfoKeys.phone],
      secretKey: secretKey,
      userPK: userPK,
    );

    final receiver = data[DataInfoKeys.phone.value] ?? '-';

    final sms = SendSmsRequestDto(
      to: receiver,
      from: twilioNumber,
      body: 'Your verification code is: $otp',
    );

    try {
      final response = await _twilioApiClient.sendSms(twilioAccountSid, sms);
      print('OTP sent: ${response.status}');
    } on MailerException catch (e) {
      print('OTP not sent. \n$e');
    }
  }

  Future<bool> verifyOtp(
    String identifier,
    String otp,
  ) async {
    final type = identifier.toDataInfoKeys();
    final otpMessage = _otpMemoryStorage[type];
    final isValid = otpMessage != null &&
        otpMessage.otp == otp &&
        otpMessage.expiry.isAfter(DateTime.now());
    if (isValid) {
      await _kycClient.validateField(
          type.toValidationResultKeys(), otpMessage.otp);
      _otpMemoryStorage.remove(type);
    }

    return isValid;
  }
}

String _generateVerificationCode() {
  final rng = Random();
  return List.generate(6, (_) => rng.nextInt(10)).join();
}

extension DataInfoKeysExtension on String {
  DataInfoKeys toDataInfoKeys() {
    switch (this) {
      case 'email':
        return DataInfoKeys.email;
      case 'phone':
        return DataInfoKeys.phone;
      default:
        throw ArgumentError('Invalid DataInfoKeys value: $this');
    }
  }
}

extension DataInfoKeysToValidationResultKeys on DataInfoKeys {
  ValidationResultKeys toValidationResultKeys() {
    switch (this) {
      case DataInfoKeys.email:
        return ValidationResultKeys.email;
      case DataInfoKeys.phone:
        return ValidationResultKeys.phone;
      default:
        throw ArgumentError('Invalid DataInfoKeys value: $this');
    }
  }
}
