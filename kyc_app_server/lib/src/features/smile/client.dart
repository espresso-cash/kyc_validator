// ignore_for_file: invalid_annotation_target

import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/src/features/smile/interceptor.dart';
import 'package:retrofit/retrofit.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@RestApi(baseUrl: 'https://testapi.smileidentity.com')
@injectable
abstract class SmileApiClient {
  @factoryMethod
  factory SmileApiClient() =>
      _SmileApiClient(Dio()..interceptors.add(const SmileInterceptor()));

  @POST('/v1/upload')
  Future<UploadResponseDto> requestUpload(@Body() UploadRequestDto request);

  @POST('/v1/job_status')
  Future<JobStatusResponseDto> status(@Body() JobStatusRequestDto request);
}

extension UploadSmileExt on String {
  Future<Response> upload(Uint8List data) async {
    final uri = Uri.tryParse(this);

    if (uri == null || !uri.isAbsolute) {
      throw Exception('Invalid URL');
    }

    final dio = Dio();

    FormData formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(data, filename: 'data.zip'),
    });

    final response = await dio.putUri(
      uri,
      data: formData,
      options: Options(
        headers: {
          HttpHeaders.contentTypeHeader: 'multipart/form-data',
        },
      ),
    );

    return response;
  }
}

@freezed
class UploadRequestDto with _$UploadRequestDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UploadRequestDto({
    @Default('rest_api') String sourceSdk,
    @Default('1.0.0') String sourceSdkVersion,
    @Default('data.zip') String fileName,
    @Default({}) Map<String, dynamic> modelParameters,
    required String callbackUrl,
    required Map<String, dynamic> partnerParams,
  }) = _UploadRequestDto;

  factory UploadRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UploadRequestDtoFromJson(json);
}

@freezed
class UploadResponseDto with _$UploadResponseDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UploadResponseDto({
    required String cameraConfig,
    required String code,
    required String refId,
    required String smileJobId,
    required String uploadUrl,
  }) = _UploadResponseDto;

  factory UploadResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseDtoFromJson(json);
}

@freezed
class JobStatusRequestDto with _$JobStatusRequestDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory JobStatusRequestDto({
    required String jobId,
    required String userId,
    @Default(true) bool imageLinks,
    @Default(true) bool history,
  }) = _JobStatusRequestDto;

  factory JobStatusRequestDto.fromJson(Map<String, dynamic> json) =>
      _$JobStatusRequestDtoFromJson(json);
}

@freezed
class JobStatusResponseDto with _$JobStatusResponseDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory JobStatusResponseDto({
    required String code,
    required bool jobComplete,
    required bool jobSuccess,
    required String timestamp,
    required Map<String, dynamic> result,
    required String kycReceipt,
    required List<Map<String, dynamic>>? history,
    required Map<String, dynamic>? imageLinks,
  }) = _JobStatusResponseDto;

  factory JobStatusResponseDto.fromJson(Map<String, dynamic> json) =>
      _$JobStatusResponseDtoFromJson(json);
}
