// ignore_for_file: invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'interceptor.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@RestApi(baseUrl: 'https://api.twilio.com')
@injectable
abstract class TwilioApiClient {
  @factoryMethod
  factory TwilioApiClient() =>
      _TwilioApiClient(Dio()..interceptors.add(const TwilioInterceptor()));

  @POST('/2010-04-01/Accounts/{accountSid}/Messages.json')
  Future<SendSmsResponseDto> sendSms(
    @Path('accountSid') String accountSid,
    @Body() SendSmsRequestDto request,
  );
}

@freezed
class SendSmsRequestDto with _$SendSmsRequestDto {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory SendSmsRequestDto({
    required String to,
    required String from,
    required String body,
  }) = _SendSmsRequestDto;

  factory SendSmsRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SendSmsRequestDtoFromJson(json);
}

@freezed
class SendSmsResponseDto with _$SendSmsResponseDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SendSmsResponseDto({
    required String accountSid,
    required String status,
    required String to,
    required String from,
    required String body,
    String? errorCode,
    String? errorMessage,
  }) = _SendSmsResponseDto;

  factory SendSmsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SendSmsResponseDtoFromJson(json);
}
