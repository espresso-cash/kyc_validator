import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';

part 'otp_message.freezed.dart';
part 'otp_message.g.dart';

@freezed
class OtpMessage with _$OtpMessage {
  const factory OtpMessage({
    required DataInfoKeys identifier,
    required String otp,
    required DateTime expiry,
  }) = _OtpMessage;

  factory OtpMessage.fromJson(Map<String, dynamic> json) =>
      _$OtpMessageFromJson(json);
}
