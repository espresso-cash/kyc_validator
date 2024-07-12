// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InfoData _$InfoDataFromJson(Map<String, dynamic> json) {
  return _InfoData.fromJson(json);
}

/// @nodoc
mixin _$InfoData {
  PackageInformation get packageInformation =>
      throw _privateConstructorUsedError;
  IdInfo get idInfo => throw _privateConstructorUsedError;
  List<ImageDto> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoDataCopyWith<InfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoDataCopyWith<$Res> {
  factory $InfoDataCopyWith(InfoData value, $Res Function(InfoData) then) =
      _$InfoDataCopyWithImpl<$Res, InfoData>;
  @useResult
  $Res call(
      {PackageInformation packageInformation,
      IdInfo idInfo,
      List<ImageDto> images});

  $PackageInformationCopyWith<$Res> get packageInformation;
  $IdInfoCopyWith<$Res> get idInfo;
}

/// @nodoc
class _$InfoDataCopyWithImpl<$Res, $Val extends InfoData>
    implements $InfoDataCopyWith<$Res> {
  _$InfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageInformation = null,
    Object? idInfo = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      packageInformation: null == packageInformation
          ? _value.packageInformation
          : packageInformation // ignore: cast_nullable_to_non_nullable
              as PackageInformation,
      idInfo: null == idInfo
          ? _value.idInfo
          : idInfo // ignore: cast_nullable_to_non_nullable
              as IdInfo,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageInformationCopyWith<$Res> get packageInformation {
    return $PackageInformationCopyWith<$Res>(_value.packageInformation,
        (value) {
      return _then(_value.copyWith(packageInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdInfoCopyWith<$Res> get idInfo {
    return $IdInfoCopyWith<$Res>(_value.idInfo, (value) {
      return _then(_value.copyWith(idInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InfoDataImplCopyWith<$Res>
    implements $InfoDataCopyWith<$Res> {
  factory _$$InfoDataImplCopyWith(
          _$InfoDataImpl value, $Res Function(_$InfoDataImpl) then) =
      __$$InfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PackageInformation packageInformation,
      IdInfo idInfo,
      List<ImageDto> images});

  @override
  $PackageInformationCopyWith<$Res> get packageInformation;
  @override
  $IdInfoCopyWith<$Res> get idInfo;
}

/// @nodoc
class __$$InfoDataImplCopyWithImpl<$Res>
    extends _$InfoDataCopyWithImpl<$Res, _$InfoDataImpl>
    implements _$$InfoDataImplCopyWith<$Res> {
  __$$InfoDataImplCopyWithImpl(
      _$InfoDataImpl _value, $Res Function(_$InfoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageInformation = null,
    Object? idInfo = null,
    Object? images = null,
  }) {
    return _then(_$InfoDataImpl(
      packageInformation: null == packageInformation
          ? _value.packageInformation
          : packageInformation // ignore: cast_nullable_to_non_nullable
              as PackageInformation,
      idInfo: null == idInfo
          ? _value.idInfo
          : idInfo // ignore: cast_nullable_to_non_nullable
              as IdInfo,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDto>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$InfoDataImpl extends _InfoData {
  const _$InfoDataImpl(
      {this.packageInformation = const PackageInformation(),
      required this.idInfo,
      required final List<ImageDto> images})
      : _images = images,
        super._();

  factory _$InfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoDataImplFromJson(json);

  @override
  @JsonKey()
  final PackageInformation packageInformation;
  @override
  final IdInfo idInfo;
  final List<ImageDto> _images;
  @override
  List<ImageDto> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'InfoData(packageInformation: $packageInformation, idInfo: $idInfo, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoDataImpl &&
            (identical(other.packageInformation, packageInformation) ||
                other.packageInformation == packageInformation) &&
            (identical(other.idInfo, idInfo) || other.idInfo == idInfo) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, packageInformation, idInfo,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoDataImplCopyWith<_$InfoDataImpl> get copyWith =>
      __$$InfoDataImplCopyWithImpl<_$InfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoDataImplToJson(
      this,
    );
  }
}

abstract class _InfoData extends InfoData {
  const factory _InfoData(
      {final PackageInformation packageInformation,
      required final IdInfo idInfo,
      required final List<ImageDto> images}) = _$InfoDataImpl;
  const _InfoData._() : super._();

  factory _InfoData.fromJson(Map<String, dynamic> json) =
      _$InfoDataImpl.fromJson;

  @override
  PackageInformation get packageInformation;
  @override
  IdInfo get idInfo;
  @override
  List<ImageDto> get images;
  @override
  @JsonKey(ignore: true)
  _$$InfoDataImplCopyWith<_$InfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdInfo _$IdInfoFromJson(Map<String, dynamic> json) {
  return _IdInfo.fromJson(json);
}

/// @nodoc
mixin _$IdInfo {
  String get dob => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  bool get entered => throw _privateConstructorUsedError;
  String get idType => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get middleName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdInfoCopyWith<IdInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdInfoCopyWith<$Res> {
  factory $IdInfoCopyWith(IdInfo value, $Res Function(IdInfo) then) =
      _$IdInfoCopyWithImpl<$Res, IdInfo>;
  @useResult
  $Res call(
      {String dob,
      String country,
      bool entered,
      String idType,
      String idNumber,
      String lastName,
      String firstName,
      String middleName});
}

/// @nodoc
class _$IdInfoCopyWithImpl<$Res, $Val extends IdInfo>
    implements $IdInfoCopyWith<$Res> {
  _$IdInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dob = null,
    Object? country = null,
    Object? entered = null,
    Object? idType = null,
    Object? idNumber = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? middleName = null,
  }) {
    return _then(_value.copyWith(
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      entered: null == entered
          ? _value.entered
          : entered // ignore: cast_nullable_to_non_nullable
              as bool,
      idType: null == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdInfoImplCopyWith<$Res> implements $IdInfoCopyWith<$Res> {
  factory _$$IdInfoImplCopyWith(
          _$IdInfoImpl value, $Res Function(_$IdInfoImpl) then) =
      __$$IdInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dob,
      String country,
      bool entered,
      String idType,
      String idNumber,
      String lastName,
      String firstName,
      String middleName});
}

/// @nodoc
class __$$IdInfoImplCopyWithImpl<$Res>
    extends _$IdInfoCopyWithImpl<$Res, _$IdInfoImpl>
    implements _$$IdInfoImplCopyWith<$Res> {
  __$$IdInfoImplCopyWithImpl(
      _$IdInfoImpl _value, $Res Function(_$IdInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dob = null,
    Object? country = null,
    Object? entered = null,
    Object? idType = null,
    Object? idNumber = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? middleName = null,
  }) {
    return _then(_$IdInfoImpl(
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      entered: null == entered
          ? _value.entered
          : entered // ignore: cast_nullable_to_non_nullable
              as bool,
      idType: null == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$IdInfoImpl implements _IdInfo {
  const _$IdInfoImpl(
      {required this.dob,
      required this.country,
      required this.entered,
      required this.idType,
      required this.idNumber,
      required this.lastName,
      required this.firstName,
      required this.middleName});

  factory _$IdInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdInfoImplFromJson(json);

  @override
  final String dob;
  @override
  final String country;
  @override
  final bool entered;
  @override
  final String idType;
  @override
  final String idNumber;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String middleName;

  @override
  String toString() {
    return 'IdInfo(dob: $dob, country: $country, entered: $entered, idType: $idType, idNumber: $idNumber, lastName: $lastName, firstName: $firstName, middleName: $middleName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdInfoImpl &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.entered, entered) || other.entered == entered) &&
            (identical(other.idType, idType) || other.idType == idType) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dob, country, entered, idType,
      idNumber, lastName, firstName, middleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdInfoImplCopyWith<_$IdInfoImpl> get copyWith =>
      __$$IdInfoImplCopyWithImpl<_$IdInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdInfoImplToJson(
      this,
    );
  }
}

abstract class _IdInfo implements IdInfo {
  const factory _IdInfo(
      {required final String dob,
      required final String country,
      required final bool entered,
      required final String idType,
      required final String idNumber,
      required final String lastName,
      required final String firstName,
      required final String middleName}) = _$IdInfoImpl;

  factory _IdInfo.fromJson(Map<String, dynamic> json) = _$IdInfoImpl.fromJson;

  @override
  String get dob;
  @override
  String get country;
  @override
  bool get entered;
  @override
  String get idType;
  @override
  String get idNumber;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get middleName;
  @override
  @JsonKey(ignore: true)
  _$$IdInfoImplCopyWith<_$IdInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) {
  return _ImageDto.fromJson(json);
}

/// @nodoc
mixin _$ImageDto {
  int get imageTypeId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDtoCopyWith<ImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDtoCopyWith<$Res> {
  factory $ImageDtoCopyWith(ImageDto value, $Res Function(ImageDto) then) =
      _$ImageDtoCopyWithImpl<$Res, ImageDto>;
  @useResult
  $Res call({int imageTypeId, String image, String fileName});
}

/// @nodoc
class _$ImageDtoCopyWithImpl<$Res, $Val extends ImageDto>
    implements $ImageDtoCopyWith<$Res> {
  _$ImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageTypeId = null,
    Object? image = null,
    Object? fileName = null,
  }) {
    return _then(_value.copyWith(
      imageTypeId: null == imageTypeId
          ? _value.imageTypeId
          : imageTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDtoImplCopyWith<$Res>
    implements $ImageDtoCopyWith<$Res> {
  factory _$$ImageDtoImplCopyWith(
          _$ImageDtoImpl value, $Res Function(_$ImageDtoImpl) then) =
      __$$ImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int imageTypeId, String image, String fileName});
}

/// @nodoc
class __$$ImageDtoImplCopyWithImpl<$Res>
    extends _$ImageDtoCopyWithImpl<$Res, _$ImageDtoImpl>
    implements _$$ImageDtoImplCopyWith<$Res> {
  __$$ImageDtoImplCopyWithImpl(
      _$ImageDtoImpl _value, $Res Function(_$ImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageTypeId = null,
    Object? image = null,
    Object? fileName = null,
  }) {
    return _then(_$ImageDtoImpl(
      imageTypeId: null == imageTypeId
          ? _value.imageTypeId
          : imageTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ImageDtoImpl implements _ImageDto {
  const _$ImageDtoImpl(
      {required this.imageTypeId, this.image = "", this.fileName = ""});

  factory _$ImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDtoImplFromJson(json);

  @override
  final int imageTypeId;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String fileName;

  @override
  String toString() {
    return 'ImageDto(imageTypeId: $imageTypeId, image: $image, fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDtoImpl &&
            (identical(other.imageTypeId, imageTypeId) ||
                other.imageTypeId == imageTypeId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageTypeId, image, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      __$$ImageDtoImplCopyWithImpl<_$ImageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDtoImplToJson(
      this,
    );
  }
}

abstract class _ImageDto implements ImageDto {
  const factory _ImageDto(
      {required final int imageTypeId,
      final String image,
      final String fileName}) = _$ImageDtoImpl;

  factory _ImageDto.fromJson(Map<String, dynamic> json) =
      _$ImageDtoImpl.fromJson;

  @override
  int get imageTypeId;
  @override
  String get image;
  @override
  String get fileName;
  @override
  @JsonKey(ignore: true)
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageInformation _$PackageInformationFromJson(Map<String, dynamic> json) {
  return _PackageInformation.fromJson(json);
}

/// @nodoc
mixin _$PackageInformation {
  ApiVersion get apiVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageInformationCopyWith<PackageInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageInformationCopyWith<$Res> {
  factory $PackageInformationCopyWith(
          PackageInformation value, $Res Function(PackageInformation) then) =
      _$PackageInformationCopyWithImpl<$Res, PackageInformation>;
  @useResult
  $Res call({ApiVersion apiVersion});

  $ApiVersionCopyWith<$Res> get apiVersion;
}

/// @nodoc
class _$PackageInformationCopyWithImpl<$Res, $Val extends PackageInformation>
    implements $PackageInformationCopyWith<$Res> {
  _$PackageInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
  }) {
    return _then(_value.copyWith(
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as ApiVersion,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiVersionCopyWith<$Res> get apiVersion {
    return $ApiVersionCopyWith<$Res>(_value.apiVersion, (value) {
      return _then(_value.copyWith(apiVersion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageInformationImplCopyWith<$Res>
    implements $PackageInformationCopyWith<$Res> {
  factory _$$PackageInformationImplCopyWith(_$PackageInformationImpl value,
          $Res Function(_$PackageInformationImpl) then) =
      __$$PackageInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiVersion apiVersion});

  @override
  $ApiVersionCopyWith<$Res> get apiVersion;
}

/// @nodoc
class __$$PackageInformationImplCopyWithImpl<$Res>
    extends _$PackageInformationCopyWithImpl<$Res, _$PackageInformationImpl>
    implements _$$PackageInformationImplCopyWith<$Res> {
  __$$PackageInformationImplCopyWithImpl(_$PackageInformationImpl _value,
      $Res Function(_$PackageInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
  }) {
    return _then(_$PackageInformationImpl(
      apiVersion: null == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as ApiVersion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageInformationImpl implements _PackageInformation {
  const _$PackageInformationImpl({this.apiVersion = const ApiVersion()});

  factory _$PackageInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageInformationImplFromJson(json);

  @override
  @JsonKey()
  final ApiVersion apiVersion;

  @override
  String toString() {
    return 'PackageInformation(apiVersion: $apiVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageInformationImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageInformationImplCopyWith<_$PackageInformationImpl> get copyWith =>
      __$$PackageInformationImplCopyWithImpl<_$PackageInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageInformationImplToJson(
      this,
    );
  }
}

abstract class _PackageInformation implements PackageInformation {
  const factory _PackageInformation({final ApiVersion apiVersion}) =
      _$PackageInformationImpl;

  factory _PackageInformation.fromJson(Map<String, dynamic> json) =
      _$PackageInformationImpl.fromJson;

  @override
  ApiVersion get apiVersion;
  @override
  @JsonKey(ignore: true)
  _$$PackageInformationImplCopyWith<_$PackageInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiVersion _$ApiVersionFromJson(Map<String, dynamic> json) {
  return _ApiVersion.fromJson(json);
}

/// @nodoc
mixin _$ApiVersion {
  int get buildNumber => throw _privateConstructorUsedError;
  int get majorVersion => throw _privateConstructorUsedError;
  int get minorVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiVersionCopyWith<ApiVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiVersionCopyWith<$Res> {
  factory $ApiVersionCopyWith(
          ApiVersion value, $Res Function(ApiVersion) then) =
      _$ApiVersionCopyWithImpl<$Res, ApiVersion>;
  @useResult
  $Res call({int buildNumber, int majorVersion, int minorVersion});
}

/// @nodoc
class _$ApiVersionCopyWithImpl<$Res, $Val extends ApiVersion>
    implements $ApiVersionCopyWith<$Res> {
  _$ApiVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildNumber = null,
    Object? majorVersion = null,
    Object? minorVersion = null,
  }) {
    return _then(_value.copyWith(
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int,
      majorVersion: null == majorVersion
          ? _value.majorVersion
          : majorVersion // ignore: cast_nullable_to_non_nullable
              as int,
      minorVersion: null == minorVersion
          ? _value.minorVersion
          : minorVersion // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiVersionImplCopyWith<$Res>
    implements $ApiVersionCopyWith<$Res> {
  factory _$$ApiVersionImplCopyWith(
          _$ApiVersionImpl value, $Res Function(_$ApiVersionImpl) then) =
      __$$ApiVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int buildNumber, int majorVersion, int minorVersion});
}

/// @nodoc
class __$$ApiVersionImplCopyWithImpl<$Res>
    extends _$ApiVersionCopyWithImpl<$Res, _$ApiVersionImpl>
    implements _$$ApiVersionImplCopyWith<$Res> {
  __$$ApiVersionImplCopyWithImpl(
      _$ApiVersionImpl _value, $Res Function(_$ApiVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildNumber = null,
    Object? majorVersion = null,
    Object? minorVersion = null,
  }) {
    return _then(_$ApiVersionImpl(
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int,
      majorVersion: null == majorVersion
          ? _value.majorVersion
          : majorVersion // ignore: cast_nullable_to_non_nullable
              as int,
      minorVersion: null == minorVersion
          ? _value.minorVersion
          : minorVersion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiVersionImpl implements _ApiVersion {
  const _$ApiVersionImpl(
      {this.buildNumber = 0, this.majorVersion = 2, this.minorVersion = 0});

  factory _$ApiVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiVersionImplFromJson(json);

  @override
  @JsonKey()
  final int buildNumber;
  @override
  @JsonKey()
  final int majorVersion;
  @override
  @JsonKey()
  final int minorVersion;

  @override
  String toString() {
    return 'ApiVersion(buildNumber: $buildNumber, majorVersion: $majorVersion, minorVersion: $minorVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiVersionImpl &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.majorVersion, majorVersion) ||
                other.majorVersion == majorVersion) &&
            (identical(other.minorVersion, minorVersion) ||
                other.minorVersion == minorVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, buildNumber, majorVersion, minorVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiVersionImplCopyWith<_$ApiVersionImpl> get copyWith =>
      __$$ApiVersionImplCopyWithImpl<_$ApiVersionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiVersionImplToJson(
      this,
    );
  }
}

abstract class _ApiVersion implements ApiVersion {
  const factory _ApiVersion(
      {final int buildNumber,
      final int majorVersion,
      final int minorVersion}) = _$ApiVersionImpl;

  factory _ApiVersion.fromJson(Map<String, dynamic> json) =
      _$ApiVersionImpl.fromJson;

  @override
  int get buildNumber;
  @override
  int get majorVersion;
  @override
  int get minorVersion;
  @override
  @JsonKey(ignore: true)
  _$$ApiVersionImplCopyWith<_$ApiVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
