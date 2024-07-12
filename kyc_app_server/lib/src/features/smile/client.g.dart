// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadRequestDtoImpl _$$UploadRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadRequestDtoImpl(
      sourceSdk: json['source_sdk'] as String? ?? 'rest_api',
      sourceSdkVersion: json['source_sdk_version'] as String? ?? '1.0.0',
      fileName: json['file_name'] as String? ?? 'data.zip',
      modelParameters:
          json['model_parameters'] as Map<String, dynamic>? ?? const {},
      callbackUrl: json['callback_url'] as String? ?? smileWebhookUrl,
      partnerParams: json['partner_params'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$UploadRequestDtoImplToJson(
        _$UploadRequestDtoImpl instance) =>
    <String, dynamic>{
      'source_sdk': instance.sourceSdk,
      'source_sdk_version': instance.sourceSdkVersion,
      'file_name': instance.fileName,
      'model_parameters': instance.modelParameters,
      'callback_url': instance.callbackUrl,
      'partner_params': instance.partnerParams,
    };

_$UploadResponseDtoImpl _$$UploadResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadResponseDtoImpl(
      cameraConfig: json['camera_config'] as String,
      code: json['code'] as String,
      refId: json['ref_id'] as String,
      smileJobId: json['smile_job_id'] as String,
      uploadUrl: json['upload_url'] as String,
    );

Map<String, dynamic> _$$UploadResponseDtoImplToJson(
        _$UploadResponseDtoImpl instance) =>
    <String, dynamic>{
      'camera_config': instance.cameraConfig,
      'code': instance.code,
      'ref_id': instance.refId,
      'smile_job_id': instance.smileJobId,
      'upload_url': instance.uploadUrl,
    };

_$JobStatusRequestDtoImpl _$$JobStatusRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JobStatusRequestDtoImpl(
      jobId: json['job_id'] as String,
      userId: json['user_id'] as String,
      imageLinks: json['image_links'] as bool? ?? true,
      history: json['history'] as bool? ?? true,
    );

Map<String, dynamic> _$$JobStatusRequestDtoImplToJson(
        _$JobStatusRequestDtoImpl instance) =>
    <String, dynamic>{
      'job_id': instance.jobId,
      'user_id': instance.userId,
      'image_links': instance.imageLinks,
      'history': instance.history,
    };

_$JobStatusResponseDtoImpl _$$JobStatusResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JobStatusResponseDtoImpl(
      code: json['code'] as String,
      jobComplete: json['job_complete'] as bool,
      jobSuccess: json['job_success'] as bool,
      timestamp: json['timestamp'] as String,
      result: json['result'] as Map<String, dynamic>,
      kycReceipt: json['kyc_receipt'] as String,
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      imageLinks: json['image_links'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$JobStatusResponseDtoImplToJson(
        _$JobStatusResponseDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'job_complete': instance.jobComplete,
      'job_success': instance.jobSuccess,
      'timestamp': instance.timestamp,
      'result': instance.result,
      'kyc_receipt': instance.kycReceipt,
      'history': instance.history,
      'image_links': instance.imageLinks,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _SmileApiClient implements SmileApiClient {
  _SmileApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://testapi.smileidentity.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UploadResponseDto> requestUpload(UploadRequestDto request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UploadResponseDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/upload',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = UploadResponseDto.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<JobStatusResponseDto> status(JobStatusRequestDto request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JobStatusResponseDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/job_status',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = JobStatusResponseDto.fromJson(_result.data!);
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
