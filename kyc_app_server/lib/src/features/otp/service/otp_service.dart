import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/src/features/otp/data/otp_repository.dart';
import 'package:kyc_app_server/src/features/twilio/client.dart';
import 'package:kyc_app_server/src/features/validator/service/kyc_client.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import '../../../../config.dart';

@singleton
class OtpService {
  OtpService(this._twilioApiClient, this._kycClient, this._otpRepository);

  final TwilioApiClient _twilioApiClient;
  final PartnerKycService _kycClient;
  final OtpRepository _otpRepository;

  Future<void> sendOtpByEmail({
    required String partnerToken,
    required String secretKey,
    required String userPK,
  }) async {
    final otp = _generateVerificationCode();
    _otpRepository.createOtpRecord(
      userPK: userPK,
      otp: otp,
      type: DataInfoKeys.email,
    );

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
    _otpRepository.createOtpRecord(
      userPK: userPK,
      otp: otp,
      type: DataInfoKeys.phone,
    );

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

  Future<bool> verifyOtp({
    required String userPK,
    required String identifier,
    required String otp,
  }) async {
    final otpMessage =
        await _otpRepository.getOtpRecord(userPK: userPK, type: identifier);
    final isValid = otpMessage != null &&
        otpMessage.otp == otp &&
        otpMessage.expiry.dateTime.isAfter(DateTime.now());
    if (isValid) {
      await _kycClient.validateField(
          identifier.toValidationResultKeys(), otpMessage.otp);
      _otpRepository.deleteOtpRecord(userPK: userPK, type: identifier);
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

extension DataInfoKeysToValidationResultKeys on String {
  ValidationResultKeys toValidationResultKeys() {
    switch (this) {
      case 'email':
        return ValidationResultKeys.email;
      case 'phone':
        return ValidationResultKeys.phone;
      default:
        throw ArgumentError('Invalid DataInfoKeys value: $this');
    }
  }
}
