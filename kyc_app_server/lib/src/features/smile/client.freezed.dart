// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadRequestDto _$UploadRequestDtoFromJson(Map<String, dynamic> json) {
  return _UploadRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UploadRequestDto {
  String get sourceSdk => throw _privateConstructorUsedError;
  String get sourceSdkVersion => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  Map<String, dynamic> get modelParameters =>
      throw _privateConstructorUsedError;
  String get callbackUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get partnerParams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadRequestDtoCopyWith<UploadRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadRequestDtoCopyWith<$Res> {
  factory $UploadRequestDtoCopyWith(
          UploadRequestDto value, $Res Function(UploadRequestDto) then) =
      _$UploadRequestDtoCopyWithImpl<$Res, UploadRequestDto>;
  @useResult
  $Res call(
      {String sourceSdk,
      String sourceSdkVersion,
      String fileName,
      Map<String, dynamic> modelParameters,
      String callbackUrl,
      Map<String, dynamic> partnerParams});
}

/// @nodoc
class _$UploadRequestDtoCopyWithImpl<$Res, $Val extends UploadRequestDto>
    implements $UploadRequestDtoCopyWith<$Res> {
  _$UploadRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceSdk = null,
    Object? sourceSdkVersion = null,
    Object? fileName = null,
    Object? modelParameters = null,
    Object? callbackUrl = null,
    Object? partnerParams = null,
  }) {
    return _then(_value.copyWith(
      sourceSdk: null == sourceSdk
          ? _value.sourceSdk
          : sourceSdk // ignore: cast_nullable_to_non_nullable
              as String,
      sourceSdkVersion: null == sourceSdkVersion
          ? _value.sourceSdkVersion
          : sourceSdkVersion // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      modelParameters: null == modelParameters
          ? _value.modelParameters
          : modelParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      callbackUrl: null == callbackUrl
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      partnerParams: null == partnerParams
          ? _value.partnerParams
          : partnerParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadRequestDtoImplCopyWith<$Res>
    implements $UploadRequestDtoCopyWith<$Res> {
  factory _$$UploadRequestDtoImplCopyWith(_$UploadRequestDtoImpl value,
          $Res Function(_$UploadRequestDtoImpl) then) =
      __$$UploadRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceSdk,
      String sourceSdkVersion,
      String fileName,
      Map<String, dynamic> modelParameters,
      String callbackUrl,
      Map<String, dynamic> partnerParams});
}

/// @nodoc
class __$$UploadRequestDtoImplCopyWithImpl<$Res>
    extends _$UploadRequestDtoCopyWithImpl<$Res, _$UploadRequestDtoImpl>
    implements _$$UploadRequestDtoImplCopyWith<$Res> {
  __$$UploadRequestDtoImplCopyWithImpl(_$UploadRequestDtoImpl _value,
      $Res Function(_$UploadRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceSdk = null,
    Object? sourceSdkVersion = null,
    Object? fileName = null,
    Object? modelParameters = null,
    Object? callbackUrl = null,
    Object? partnerParams = null,
  }) {
    return _then(_$UploadRequestDtoImpl(
      sourceSdk: null == sourceSdk
          ? _value.sourceSdk
          : sourceSdk // ignore: cast_nullable_to_non_nullable
              as String,
      sourceSdkVersion: null == sourceSdkVersion
          ? _value.sourceSdkVersion
          : sourceSdkVersion // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      modelParameters: null == modelParameters
          ? _value._modelParameters
          : modelParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      callbackUrl: null == callbackUrl
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      partnerParams: null == partnerParams
          ? _value._partnerParams
          : partnerParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$UploadRequestDtoImpl implements _UploadRequestDto {
  const _$UploadRequestDtoImpl(
      {this.sourceSdk = 'rest_api',
      this.sourceSdkVersion = '1.0.0',
      this.fileName = 'data.zip',
      final Map<String, dynamic> modelParameters = const {},
      this.callbackUrl = smileWebhookUrl,
      required final Map<String, dynamic> partnerParams})
      : _modelParameters = modelParameters,
        _partnerParams = partnerParams;

  factory _$UploadRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadRequestDtoImplFromJson(json);

  @override
  @JsonKey()
  final String sourceSdk;
  @override
  @JsonKey()
  final String sourceSdkVersion;
  @override
  @JsonKey()
  final String fileName;
  final Map<String, dynamic> _modelParameters;
  @override
  @JsonKey()
  Map<String, dynamic> get modelParameters {
    if (_modelParameters is EqualUnmodifiableMapView) return _modelParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_modelParameters);
  }

  @override
  @JsonKey()
  final String callbackUrl;
  final Map<String, dynamic> _partnerParams;
  @override
  Map<String, dynamic> get partnerParams {
    if (_partnerParams is EqualUnmodifiableMapView) return _partnerParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_partnerParams);
  }

  @override
  String toString() {
    return 'UploadRequestDto(sourceSdk: $sourceSdk, sourceSdkVersion: $sourceSdkVersion, fileName: $fileName, modelParameters: $modelParameters, callbackUrl: $callbackUrl, partnerParams: $partnerParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadRequestDtoImpl &&
            (identical(other.sourceSdk, sourceSdk) ||
                other.sourceSdk == sourceSdk) &&
            (identical(other.sourceSdkVersion, sourceSdkVersion) ||
                other.sourceSdkVersion == sourceSdkVersion) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            const DeepCollectionEquality()
                .equals(other._modelParameters, _modelParameters) &&
            (identical(other.callbackUrl, callbackUrl) ||
                other.callbackUrl == callbackUrl) &&
            const DeepCollectionEquality()
                .equals(other._partnerParams, _partnerParams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sourceSdk,
      sourceSdkVersion,
      fileName,
      const DeepCollectionEquality().hash(_modelParameters),
      callbackUrl,
      const DeepCollectionEquality().hash(_partnerParams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadRequestDtoImplCopyWith<_$UploadRequestDtoImpl> get copyWith =>
      __$$UploadRequestDtoImplCopyWithImpl<_$UploadRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _UploadRequestDto implements UploadRequestDto {
  const factory _UploadRequestDto(
          {final String sourceSdk,
          final String sourceSdkVersion,
          final String fileName,
          final Map<String, dynamic> modelParameters,
          final String callbackUrl,
          required final Map<String, dynamic> partnerParams}) =
      _$UploadRequestDtoImpl;

  factory _UploadRequestDto.fromJson(Map<String, dynamic> json) =
      _$UploadRequestDtoImpl.fromJson;

  @override
  String get sourceSdk;
  @override
  String get sourceSdkVersion;
  @override
  String get fileName;
  @override
  Map<String, dynamic> get modelParameters;
  @override
  String get callbackUrl;
  @override
  Map<String, dynamic> get partnerParams;
  @override
  @JsonKey(ignore: true)
  _$$UploadRequestDtoImplCopyWith<_$UploadRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadResponseDto _$UploadResponseDtoFromJson(Map<String, dynamic> json) {
  return _UploadResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UploadResponseDto {
  String get cameraConfig => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get refId => throw _privateConstructorUsedError;
  String get smileJobId => throw _privateConstructorUsedError;
  String get uploadUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadResponseDtoCopyWith<UploadResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResponseDtoCopyWith<$Res> {
  factory $UploadResponseDtoCopyWith(
          UploadResponseDto value, $Res Function(UploadResponseDto) then) =
      _$UploadResponseDtoCopyWithImpl<$Res, UploadResponseDto>;
  @useResult
  $Res call(
      {String cameraConfig,
      String code,
      String refId,
      String smileJobId,
      String uploadUrl});
}

/// @nodoc
class _$UploadResponseDtoCopyWithImpl<$Res, $Val extends UploadResponseDto>
    implements $UploadResponseDtoCopyWith<$Res> {
  _$UploadResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraConfig = null,
    Object? code = null,
    Object? refId = null,
    Object? smileJobId = null,
    Object? uploadUrl = null,
  }) {
    return _then(_value.copyWith(
      cameraConfig: null == cameraConfig
          ? _value.cameraConfig
          : cameraConfig // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      smileJobId: null == smileJobId
          ? _value.smileJobId
          : smileJobId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadUrl: null == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadResponseDtoImplCopyWith<$Res>
    implements $UploadResponseDtoCopyWith<$Res> {
  factory _$$UploadResponseDtoImplCopyWith(_$UploadResponseDtoImpl value,
          $Res Function(_$UploadResponseDtoImpl) then) =
      __$$UploadResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cameraConfig,
      String code,
      String refId,
      String smileJobId,
      String uploadUrl});
}

/// @nodoc
class __$$UploadResponseDtoImplCopyWithImpl<$Res>
    extends _$UploadResponseDtoCopyWithImpl<$Res, _$UploadResponseDtoImpl>
    implements _$$UploadResponseDtoImplCopyWith<$Res> {
  __$$UploadResponseDtoImplCopyWithImpl(_$UploadResponseDtoImpl _value,
      $Res Function(_$UploadResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraConfig = null,
    Object? code = null,
    Object? refId = null,
    Object? smileJobId = null,
    Object? uploadUrl = null,
  }) {
    return _then(_$UploadResponseDtoImpl(
      cameraConfig: null == cameraConfig
          ? _value.cameraConfig
          : cameraConfig // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      smileJobId: null == smileJobId
          ? _value.smileJobId
          : smileJobId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadUrl: null == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$UploadResponseDtoImpl implements _UploadResponseDto {
  const _$UploadResponseDtoImpl(
      {required this.cameraConfig,
      required this.code,
      required this.refId,
      required this.smileJobId,
      required this.uploadUrl});

  factory _$UploadResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadResponseDtoImplFromJson(json);

  @override
  final String cameraConfig;
  @override
  final String code;
  @override
  final String refId;
  @override
  final String smileJobId;
  @override
  final String uploadUrl;

  @override
  String toString() {
    return 'UploadResponseDto(cameraConfig: $cameraConfig, code: $code, refId: $refId, smileJobId: $smileJobId, uploadUrl: $uploadUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadResponseDtoImpl &&
            (identical(other.cameraConfig, cameraConfig) ||
                other.cameraConfig == cameraConfig) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.smileJobId, smileJobId) ||
                other.smileJobId == smileJobId) &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cameraConfig, code, refId, smileJobId, uploadUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadResponseDtoImplCopyWith<_$UploadResponseDtoImpl> get copyWith =>
      __$$UploadResponseDtoImplCopyWithImpl<_$UploadResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _UploadResponseDto implements UploadResponseDto {
  const factory _UploadResponseDto(
      {required final String cameraConfig,
      required final String code,
      required final String refId,
      required final String smileJobId,
      required final String uploadUrl}) = _$UploadResponseDtoImpl;

  factory _UploadResponseDto.fromJson(Map<String, dynamic> json) =
      _$UploadResponseDtoImpl.fromJson;

  @override
  String get cameraConfig;
  @override
  String get code;
  @override
  String get refId;
  @override
  String get smileJobId;
  @override
  String get uploadUrl;
  @override
  @JsonKey(ignore: true)
  _$$UploadResponseDtoImplCopyWith<_$UploadResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobStatusRequestDto _$JobStatusRequestDtoFromJson(Map<String, dynamic> json) {
  return _JobStatusRequestDto.fromJson(json);
}

/// @nodoc
mixin _$JobStatusRequestDto {
  String get jobId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get imageLinks => throw _privateConstructorUsedError;
  bool get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobStatusRequestDtoCopyWith<JobStatusRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobStatusRequestDtoCopyWith<$Res> {
  factory $JobStatusRequestDtoCopyWith(
          JobStatusRequestDto value, $Res Function(JobStatusRequestDto) then) =
      _$JobStatusRequestDtoCopyWithImpl<$Res, JobStatusRequestDto>;
  @useResult
  $Res call({String jobId, String userId, bool imageLinks, bool history});
}

/// @nodoc
class _$JobStatusRequestDtoCopyWithImpl<$Res, $Val extends JobStatusRequestDto>
    implements $JobStatusRequestDtoCopyWith<$Res> {
  _$JobStatusRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? userId = null,
    Object? imageLinks = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      imageLinks: null == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as bool,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobStatusRequestDtoImplCopyWith<$Res>
    implements $JobStatusRequestDtoCopyWith<$Res> {
  factory _$$JobStatusRequestDtoImplCopyWith(_$JobStatusRequestDtoImpl value,
          $Res Function(_$JobStatusRequestDtoImpl) then) =
      __$$JobStatusRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jobId, String userId, bool imageLinks, bool history});
}

/// @nodoc
class __$$JobStatusRequestDtoImplCopyWithImpl<$Res>
    extends _$JobStatusRequestDtoCopyWithImpl<$Res, _$JobStatusRequestDtoImpl>
    implements _$$JobStatusRequestDtoImplCopyWith<$Res> {
  __$$JobStatusRequestDtoImplCopyWithImpl(_$JobStatusRequestDtoImpl _value,
      $Res Function(_$JobStatusRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? userId = null,
    Object? imageLinks = null,
    Object? history = null,
  }) {
    return _then(_$JobStatusRequestDtoImpl(
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      imageLinks: null == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as bool,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$JobStatusRequestDtoImpl implements _JobStatusRequestDto {
  const _$JobStatusRequestDtoImpl(
      {required this.jobId,
      required this.userId,
      this.imageLinks = true,
      this.history = true});

  factory _$JobStatusRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobStatusRequestDtoImplFromJson(json);

  @override
  final String jobId;
  @override
  final String userId;
  @override
  @JsonKey()
  final bool imageLinks;
  @override
  @JsonKey()
  final bool history;

  @override
  String toString() {
    return 'JobStatusRequestDto(jobId: $jobId, userId: $userId, imageLinks: $imageLinks, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobStatusRequestDtoImpl &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.imageLinks, imageLinks) ||
                other.imageLinks == imageLinks) &&
            (identical(other.history, history) || other.history == history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jobId, userId, imageLinks, history);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobStatusRequestDtoImplCopyWith<_$JobStatusRequestDtoImpl> get copyWith =>
      __$$JobStatusRequestDtoImplCopyWithImpl<_$JobStatusRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobStatusRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _JobStatusRequestDto implements JobStatusRequestDto {
  const factory _JobStatusRequestDto(
      {required final String jobId,
      required final String userId,
      final bool imageLinks,
      final bool history}) = _$JobStatusRequestDtoImpl;

  factory _JobStatusRequestDto.fromJson(Map<String, dynamic> json) =
      _$JobStatusRequestDtoImpl.fromJson;

  @override
  String get jobId;
  @override
  String get userId;
  @override
  bool get imageLinks;
  @override
  bool get history;
  @override
  @JsonKey(ignore: true)
  _$$JobStatusRequestDtoImplCopyWith<_$JobStatusRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobStatusResponseDto _$JobStatusResponseDtoFromJson(Map<String, dynamic> json) {
  return _JobStatusResponseDto.fromJson(json);
}

/// @nodoc
mixin _$JobStatusResponseDto {
  String get code => throw _privateConstructorUsedError;
  bool get jobComplete => throw _privateConstructorUsedError;
  bool get jobSuccess => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic> get result => throw _privateConstructorUsedError;
  String get kycReceipt => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get history => throw _privateConstructorUsedError;
  Map<String, dynamic>? get imageLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobStatusResponseDtoCopyWith<JobStatusResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobStatusResponseDtoCopyWith<$Res> {
  factory $JobStatusResponseDtoCopyWith(JobStatusResponseDto value,
          $Res Function(JobStatusResponseDto) then) =
      _$JobStatusResponseDtoCopyWithImpl<$Res, JobStatusResponseDto>;
  @useResult
  $Res call(
      {String code,
      bool jobComplete,
      bool jobSuccess,
      String timestamp,
      Map<String, dynamic> result,
      String kycReceipt,
      List<Map<String, dynamic>>? history,
      Map<String, dynamic>? imageLinks});
}

/// @nodoc
class _$JobStatusResponseDtoCopyWithImpl<$Res,
        $Val extends JobStatusResponseDto>
    implements $JobStatusResponseDtoCopyWith<$Res> {
  _$JobStatusResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? jobComplete = null,
    Object? jobSuccess = null,
    Object? timestamp = null,
    Object? result = null,
    Object? kycReceipt = null,
    Object? history = freezed,
    Object? imageLinks = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      jobComplete: null == jobComplete
          ? _value.jobComplete
          : jobComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      jobSuccess: null == jobSuccess
          ? _value.jobSuccess
          : jobSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      kycReceipt: null == kycReceipt
          ? _value.kycReceipt
          : kycReceipt // ignore: cast_nullable_to_non_nullable
              as String,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      imageLinks: freezed == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobStatusResponseDtoImplCopyWith<$Res>
    implements $JobStatusResponseDtoCopyWith<$Res> {
  factory _$$JobStatusResponseDtoImplCopyWith(_$JobStatusResponseDtoImpl value,
          $Res Function(_$JobStatusResponseDtoImpl) then) =
      __$$JobStatusResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      bool jobComplete,
      bool jobSuccess,
      String timestamp,
      Map<String, dynamic> result,
      String kycReceipt,
      List<Map<String, dynamic>>? history,
      Map<String, dynamic>? imageLinks});
}

/// @nodoc
class __$$JobStatusResponseDtoImplCopyWithImpl<$Res>
    extends _$JobStatusResponseDtoCopyWithImpl<$Res, _$JobStatusResponseDtoImpl>
    implements _$$JobStatusResponseDtoImplCopyWith<$Res> {
  __$$JobStatusResponseDtoImplCopyWithImpl(_$JobStatusResponseDtoImpl _value,
      $Res Function(_$JobStatusResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? jobComplete = null,
    Object? jobSuccess = null,
    Object? timestamp = null,
    Object? result = null,
    Object? kycReceipt = null,
    Object? history = freezed,
    Object? imageLinks = freezed,
  }) {
    return _then(_$JobStatusResponseDtoImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      jobComplete: null == jobComplete
          ? _value.jobComplete
          : jobComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      jobSuccess: null == jobSuccess
          ? _value.jobSuccess
          : jobSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      kycReceipt: null == kycReceipt
          ? _value.kycReceipt
          : kycReceipt // ignore: cast_nullable_to_non_nullable
              as String,
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      imageLinks: freezed == imageLinks
          ? _value._imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$JobStatusResponseDtoImpl implements _JobStatusResponseDto {
  const _$JobStatusResponseDtoImpl(
      {required this.code,
      required this.jobComplete,
      required this.jobSuccess,
      required this.timestamp,
      required final Map<String, dynamic> result,
      required this.kycReceipt,
      required final List<Map<String, dynamic>>? history,
      required final Map<String, dynamic>? imageLinks})
      : _result = result,
        _history = history,
        _imageLinks = imageLinks;

  factory _$JobStatusResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobStatusResponseDtoImplFromJson(json);

  @override
  final String code;
  @override
  final bool jobComplete;
  @override
  final bool jobSuccess;
  @override
  final String timestamp;
  final Map<String, dynamic> _result;
  @override
  Map<String, dynamic> get result {
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_result);
  }

  @override
  final String kycReceipt;
  final List<Map<String, dynamic>>? _history;
  @override
  List<Map<String, dynamic>>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _imageLinks;
  @override
  Map<String, dynamic>? get imageLinks {
    final value = _imageLinks;
    if (value == null) return null;
    if (_imageLinks is EqualUnmodifiableMapView) return _imageLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'JobStatusResponseDto(code: $code, jobComplete: $jobComplete, jobSuccess: $jobSuccess, timestamp: $timestamp, result: $result, kycReceipt: $kycReceipt, history: $history, imageLinks: $imageLinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobStatusResponseDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.jobComplete, jobComplete) ||
                other.jobComplete == jobComplete) &&
            (identical(other.jobSuccess, jobSuccess) ||
                other.jobSuccess == jobSuccess) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.kycReceipt, kycReceipt) ||
                other.kycReceipt == kycReceipt) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            const DeepCollectionEquality()
                .equals(other._imageLinks, _imageLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      jobComplete,
      jobSuccess,
      timestamp,
      const DeepCollectionEquality().hash(_result),
      kycReceipt,
      const DeepCollectionEquality().hash(_history),
      const DeepCollectionEquality().hash(_imageLinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobStatusResponseDtoImplCopyWith<_$JobStatusResponseDtoImpl>
      get copyWith =>
          __$$JobStatusResponseDtoImplCopyWithImpl<_$JobStatusResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobStatusResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _JobStatusResponseDto implements JobStatusResponseDto {
  const factory _JobStatusResponseDto(
          {required final String code,
          required final bool jobComplete,
          required final bool jobSuccess,
          required final String timestamp,
          required final Map<String, dynamic> result,
          required final String kycReceipt,
          required final List<Map<String, dynamic>>? history,
          required final Map<String, dynamic>? imageLinks}) =
      _$JobStatusResponseDtoImpl;

  factory _JobStatusResponseDto.fromJson(Map<String, dynamic> json) =
      _$JobStatusResponseDtoImpl.fromJson;

  @override
  String get code;
  @override
  bool get jobComplete;
  @override
  bool get jobSuccess;
  @override
  String get timestamp;
  @override
  Map<String, dynamic> get result;
  @override
  String get kycReceipt;
  @override
  List<Map<String, dynamic>>? get history;
  @override
  Map<String, dynamic>? get imageLinks;
  @override
  @JsonKey(ignore: true)
  _$$JobStatusResponseDtoImplCopyWith<_$JobStatusResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
