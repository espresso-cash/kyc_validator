import 'package:grpc/grpc.dart';
import 'package:kyc_app_client/kyc_app_client.dart';
import 'package:kyc_app_server/di.dart';
import 'package:kyc_app_server/src/features/otp/service/otp_service.dart';

class OtpEndpoint extends OtpServiceBase {
  @override
  Future<SendOtpResponse> sendOtpByEmail(
      ServiceCall call, SendOtpRequest request) async {
    final service = sl<OtpService>();

    await service.sendOtpByEmail(
      secretKey: request.secretKey,
      userPK: request.userPk,
    );

    return SendOtpResponse()..status = 'OTP sent';
  }

  @override
  Future<SendOtpResponse> sendOtpBySms(
      ServiceCall call, SendOtpRequest request) async {
    final service = sl<OtpService>();

    await service.sendOtpBySms(
      secretKey: request.secretKey,
      userPK: request.userPk,
    );

    return SendOtpResponse()..status = 'OTP sent';
  }

  @override
  Future<VerifyOtpResponse> verifyOtp(
      ServiceCall call, VerifyOtpRequest request) async {
    final service = sl<OtpService>();

    final isValid = await service.verifyOtp(
      userPK: request.userPk,
      secretKey: request.secretKey,
      otp: request.otp,
      identifier: request.identifier.name,
    );

    return VerifyOtpResponse()..isValid = isValid;
  }
}
