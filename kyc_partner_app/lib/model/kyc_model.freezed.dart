// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KycUserDetails _$KycUserDetailsFromJson(Map<String, dynamic> json) {
  return _KycUserDetails.fromJson(json);
}

/// @nodoc
mixin _$KycUserDetails {
  KycInfo get kycInfo => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  VerificationResults get verificationResults =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KycUserDetailsCopyWith<KycUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycUserDetailsCopyWith<$Res> {
  factory $KycUserDetailsCopyWith(
          KycUserDetails value, $Res Function(KycUserDetails) then) =
      _$KycUserDetailsCopyWithImpl<$Res, KycUserDetails>;
  @useResult
  $Res call(
      {KycInfo kycInfo,
      String email,
      String phone,
      VerificationResults verificationResults});

  $KycInfoCopyWith<$Res> get kycInfo;
  $VerificationResultsCopyWith<$Res> get verificationResults;
}

/// @nodoc
class _$KycUserDetailsCopyWithImpl<$Res, $Val extends KycUserDetails>
    implements $KycUserDetailsCopyWith<$Res> {
  _$KycUserDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycInfo = null,
    Object? email = null,
    Object? phone = null,
    Object? verificationResults = null,
  }) {
    return _then(_value.copyWith(
      kycInfo: null == kycInfo
          ? _value.kycInfo
          : kycInfo // ignore: cast_nullable_to_non_nullable
              as KycInfo,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      verificationResults: null == verificationResults
          ? _value.verificationResults
          : verificationResults // ignore: cast_nullable_to_non_nullable
              as VerificationResults,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KycInfoCopyWith<$Res> get kycInfo {
    return $KycInfoCopyWith<$Res>(_value.kycInfo, (value) {
      return _then(_value.copyWith(kycInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationResultsCopyWith<$Res> get verificationResults {
    return $VerificationResultsCopyWith<$Res>(_value.verificationResults,
        (value) {
      return _then(_value.copyWith(verificationResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KycUserDetailsImplCopyWith<$Res>
    implements $KycUserDetailsCopyWith<$Res> {
  factory _$$KycUserDetailsImplCopyWith(_$KycUserDetailsImpl value,
          $Res Function(_$KycUserDetailsImpl) then) =
      __$$KycUserDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KycInfo kycInfo,
      String email,
      String phone,
      VerificationResults verificationResults});

  @override
  $KycInfoCopyWith<$Res> get kycInfo;
  @override
  $VerificationResultsCopyWith<$Res> get verificationResults;
}

/// @nodoc
class __$$KycUserDetailsImplCopyWithImpl<$Res>
    extends _$KycUserDetailsCopyWithImpl<$Res, _$KycUserDetailsImpl>
    implements _$$KycUserDetailsImplCopyWith<$Res> {
  __$$KycUserDetailsImplCopyWithImpl(
      _$KycUserDetailsImpl _value, $Res Function(_$KycUserDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycInfo = null,
    Object? email = null,
    Object? phone = null,
    Object? verificationResults = null,
  }) {
    return _then(_$KycUserDetailsImpl(
      kycInfo: null == kycInfo
          ? _value.kycInfo
          : kycInfo // ignore: cast_nullable_to_non_nullable
              as KycInfo,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      verificationResults: null == verificationResults
          ? _value.verificationResults
          : verificationResults // ignore: cast_nullable_to_non_nullable
              as VerificationResults,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycUserDetailsImpl implements _KycUserDetails {
  const _$KycUserDetailsImpl(
      {required this.kycInfo,
      required this.email,
      required this.phone,
      required this.verificationResults});

  factory _$KycUserDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycUserDetailsImplFromJson(json);

  @override
  final KycInfo kycInfo;
  @override
  final String email;
  @override
  final String phone;
  @override
  final VerificationResults verificationResults;

  @override
  String toString() {
    return 'KycUserDetails(kycInfo: $kycInfo, email: $email, phone: $phone, verificationResults: $verificationResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycUserDetailsImpl &&
            (identical(other.kycInfo, kycInfo) || other.kycInfo == kycInfo) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.verificationResults, verificationResults) ||
                other.verificationResults == verificationResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kycInfo, email, phone, verificationResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KycUserDetailsImplCopyWith<_$KycUserDetailsImpl> get copyWith =>
      __$$KycUserDetailsImplCopyWithImpl<_$KycUserDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycUserDetailsImplToJson(
      this,
    );
  }
}

abstract class _KycUserDetails implements KycUserDetails {
  const factory _KycUserDetails(
          {required final KycInfo kycInfo,
          required final String email,
          required final String phone,
          required final VerificationResults verificationResults}) =
      _$KycUserDetailsImpl;

  factory _KycUserDetails.fromJson(Map<String, dynamic> json) =
      _$KycUserDetailsImpl.fromJson;

  @override
  KycInfo get kycInfo;
  @override
  String get email;
  @override
  String get phone;
  @override
  VerificationResults get verificationResults;
  @override
  @JsonKey(ignore: true)
  _$$KycUserDetailsImplCopyWith<_$KycUserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KycInfo _$KycInfoFromJson(Map<String, dynamic> json) {
  return _KycInfo.fromJson(json);
}

/// @nodoc
mixin _$KycInfo {
  String? get userId => throw _privateConstructorUsedError;
  String? get jobId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get middleName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get idType => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  String? get selfie => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KycInfoCopyWith<KycInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycInfoCopyWith<$Res> {
  factory $KycInfoCopyWith(KycInfo value, $Res Function(KycInfo) then) =
      _$KycInfoCopyWithImpl<$Res, KycInfo>;
  @useResult
  $Res call(
      {String? userId,
      String? jobId,
      String firstName,
      String middleName,
      String lastName,
      String dob,
      String countryCode,
      String idType,
      String idNumber,
      String? selfie});
}

/// @nodoc
class _$KycInfoCopyWithImpl<$Res, $Val extends KycInfo>
    implements $KycInfoCopyWith<$Res> {
  _$KycInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? jobId = freezed,
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? dob = null,
    Object? countryCode = null,
    Object? idType = null,
    Object? idNumber = null,
    Object? selfie = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      idType: null == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycInfoImplCopyWith<$Res> implements $KycInfoCopyWith<$Res> {
  factory _$$KycInfoImplCopyWith(
          _$KycInfoImpl value, $Res Function(_$KycInfoImpl) then) =
      __$$KycInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? jobId,
      String firstName,
      String middleName,
      String lastName,
      String dob,
      String countryCode,
      String idType,
      String idNumber,
      String? selfie});
}

/// @nodoc
class __$$KycInfoImplCopyWithImpl<$Res>
    extends _$KycInfoCopyWithImpl<$Res, _$KycInfoImpl>
    implements _$$KycInfoImplCopyWith<$Res> {
  __$$KycInfoImplCopyWithImpl(
      _$KycInfoImpl _value, $Res Function(_$KycInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? jobId = freezed,
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? dob = null,
    Object? countryCode = null,
    Object? idType = null,
    Object? idNumber = null,
    Object? selfie = freezed,
  }) {
    return _then(_$KycInfoImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      idType: null == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycInfoImpl implements _KycInfo {
  _$KycInfoImpl(
      {this.userId,
      this.jobId,
      required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.dob,
      required this.countryCode,
      required this.idType,
      required this.idNumber,
      this.selfie});

  factory _$KycInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycInfoImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? jobId;
  @override
  final String firstName;
  @override
  final String middleName;
  @override
  final String lastName;
  @override
  final String dob;
  @override
  final String countryCode;
  @override
  final String idType;
  @override
  final String idNumber;
  @override
  final String? selfie;

  @override
  String toString() {
    return 'KycInfo(userId: $userId, jobId: $jobId, firstName: $firstName, middleName: $middleName, lastName: $lastName, dob: $dob, countryCode: $countryCode, idType: $idType, idNumber: $idNumber, selfie: $selfie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycInfoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.idType, idType) || other.idType == idType) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.selfie, selfie) || other.selfie == selfie));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, jobId, firstName,
      middleName, lastName, dob, countryCode, idType, idNumber, selfie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KycInfoImplCopyWith<_$KycInfoImpl> get copyWith =>
      __$$KycInfoImplCopyWithImpl<_$KycInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycInfoImplToJson(
      this,
    );
  }
}

abstract class _KycInfo implements KycInfo {
  factory _KycInfo(
      {final String? userId,
      final String? jobId,
      required final String firstName,
      required final String middleName,
      required final String lastName,
      required final String dob,
      required final String countryCode,
      required final String idType,
      required final String idNumber,
      final String? selfie}) = _$KycInfoImpl;

  factory _KycInfo.fromJson(Map<String, dynamic> json) = _$KycInfoImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get jobId;
  @override
  String get firstName;
  @override
  String get middleName;
  @override
  String get lastName;
  @override
  String get dob;
  @override
  String get countryCode;
  @override
  String get idType;
  @override
  String get idNumber;
  @override
  String? get selfie;
  @override
  @JsonKey(ignore: true)
  _$$KycInfoImplCopyWith<_$KycInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerificationResults _$VerificationResultsFromJson(Map<String, dynamic> json) {
  return _VerificationResults.fromJson(json);
}

/// @nodoc
mixin _$VerificationResults {
  String? get smileId => throw _privateConstructorUsedError;
  String? get emailVerification => throw _privateConstructorUsedError;
  String? get phoneVerification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationResultsCopyWith<VerificationResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResultsCopyWith<$Res> {
  factory $VerificationResultsCopyWith(
          VerificationResults value, $Res Function(VerificationResults) then) =
      _$VerificationResultsCopyWithImpl<$Res, VerificationResults>;
  @useResult
  $Res call(
      {String? smileId, String? emailVerification, String? phoneVerification});
}

/// @nodoc
class _$VerificationResultsCopyWithImpl<$Res, $Val extends VerificationResults>
    implements $VerificationResultsCopyWith<$Res> {
  _$VerificationResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smileId = freezed,
    Object? emailVerification = freezed,
    Object? phoneVerification = freezed,
  }) {
    return _then(_value.copyWith(
      smileId: freezed == smileId
          ? _value.smileId
          : smileId // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerification: freezed == emailVerification
          ? _value.emailVerification
          : emailVerification // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerification: freezed == phoneVerification
          ? _value.phoneVerification
          : phoneVerification // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationResultsImplCopyWith<$Res>
    implements $VerificationResultsCopyWith<$Res> {
  factory _$$VerificationResultsImplCopyWith(_$VerificationResultsImpl value,
          $Res Function(_$VerificationResultsImpl) then) =
      __$$VerificationResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? smileId, String? emailVerification, String? phoneVerification});
}

/// @nodoc
class __$$VerificationResultsImplCopyWithImpl<$Res>
    extends _$VerificationResultsCopyWithImpl<$Res, _$VerificationResultsImpl>
    implements _$$VerificationResultsImplCopyWith<$Res> {
  __$$VerificationResultsImplCopyWithImpl(_$VerificationResultsImpl _value,
      $Res Function(_$VerificationResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smileId = freezed,
    Object? emailVerification = freezed,
    Object? phoneVerification = freezed,
  }) {
    return _then(_$VerificationResultsImpl(
      smileId: freezed == smileId
          ? _value.smileId
          : smileId // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerification: freezed == emailVerification
          ? _value.emailVerification
          : emailVerification // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerification: freezed == phoneVerification
          ? _value.phoneVerification
          : phoneVerification // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationResultsImpl implements _VerificationResults {
  const _$VerificationResultsImpl(
      {this.smileId, this.emailVerification, this.phoneVerification});

  factory _$VerificationResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationResultsImplFromJson(json);

  @override
  final String? smileId;
  @override
  final String? emailVerification;
  @override
  final String? phoneVerification;

  @override
  String toString() {
    return 'VerificationResults(smileId: $smileId, emailVerification: $emailVerification, phoneVerification: $phoneVerification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationResultsImpl &&
            (identical(other.smileId, smileId) || other.smileId == smileId) &&
            (identical(other.emailVerification, emailVerification) ||
                other.emailVerification == emailVerification) &&
            (identical(other.phoneVerification, phoneVerification) ||
                other.phoneVerification == phoneVerification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, smileId, emailVerification, phoneVerification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationResultsImplCopyWith<_$VerificationResultsImpl> get copyWith =>
      __$$VerificationResultsImplCopyWithImpl<_$VerificationResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationResultsImplToJson(
      this,
    );
  }
}

abstract class _VerificationResults implements VerificationResults {
  const factory _VerificationResults(
      {final String? smileId,
      final String? emailVerification,
      final String? phoneVerification}) = _$VerificationResultsImpl;

  factory _VerificationResults.fromJson(Map<String, dynamic> json) =
      _$VerificationResultsImpl.fromJson;

  @override
  String? get smileId;
  @override
  String? get emailVerification;
  @override
  String? get phoneVerification;
  @override
  @JsonKey(ignore: true)
  _$$VerificationResultsImplCopyWith<_$VerificationResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KycUsers _$KycUsersFromJson(Map<String, dynamic> json) {
  return _KycUsers.fromJson(json);
}

/// @nodoc
mixin _$KycUsers {
  String get secretKey => throw _privateConstructorUsedError;
  String get userPK => throw _privateConstructorUsedError;
  String get partnerToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KycUsersCopyWith<KycUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycUsersCopyWith<$Res> {
  factory $KycUsersCopyWith(KycUsers value, $Res Function(KycUsers) then) =
      _$KycUsersCopyWithImpl<$Res, KycUsers>;
  @useResult
  $Res call({String secretKey, String userPK, String partnerToken});
}

/// @nodoc
class _$KycUsersCopyWithImpl<$Res, $Val extends KycUsers>
    implements $KycUsersCopyWith<$Res> {
  _$KycUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secretKey = null,
    Object? userPK = null,
    Object? partnerToken = null,
  }) {
    return _then(_value.copyWith(
      secretKey: null == secretKey
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String,
      userPK: null == userPK
          ? _value.userPK
          : userPK // ignore: cast_nullable_to_non_nullable
              as String,
      partnerToken: null == partnerToken
          ? _value.partnerToken
          : partnerToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycUsersImplCopyWith<$Res>
    implements $KycUsersCopyWith<$Res> {
  factory _$$KycUsersImplCopyWith(
          _$KycUsersImpl value, $Res Function(_$KycUsersImpl) then) =
      __$$KycUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String secretKey, String userPK, String partnerToken});
}

/// @nodoc
class __$$KycUsersImplCopyWithImpl<$Res>
    extends _$KycUsersCopyWithImpl<$Res, _$KycUsersImpl>
    implements _$$KycUsersImplCopyWith<$Res> {
  __$$KycUsersImplCopyWithImpl(
      _$KycUsersImpl _value, $Res Function(_$KycUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secretKey = null,
    Object? userPK = null,
    Object? partnerToken = null,
  }) {
    return _then(_$KycUsersImpl(
      secretKey: null == secretKey
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String,
      userPK: null == userPK
          ? _value.userPK
          : userPK // ignore: cast_nullable_to_non_nullable
              as String,
      partnerToken: null == partnerToken
          ? _value.partnerToken
          : partnerToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycUsersImpl implements _KycUsers {
  const _$KycUsersImpl(
      {required this.secretKey,
      required this.userPK,
      required this.partnerToken});

  factory _$KycUsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycUsersImplFromJson(json);

  @override
  final String secretKey;
  @override
  final String userPK;
  @override
  final String partnerToken;

  @override
  String toString() {
    return 'KycUsers(secretKey: $secretKey, userPK: $userPK, partnerToken: $partnerToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycUsersImpl &&
            (identical(other.secretKey, secretKey) ||
                other.secretKey == secretKey) &&
            (identical(other.userPK, userPK) || other.userPK == userPK) &&
            (identical(other.partnerToken, partnerToken) ||
                other.partnerToken == partnerToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, secretKey, userPK, partnerToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KycUsersImplCopyWith<_$KycUsersImpl> get copyWith =>
      __$$KycUsersImplCopyWithImpl<_$KycUsersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycUsersImplToJson(
      this,
    );
  }
}

abstract class _KycUsers implements KycUsers {
  const factory _KycUsers(
      {required final String secretKey,
      required final String userPK,
      required final String partnerToken}) = _$KycUsersImpl;

  factory _KycUsers.fromJson(Map<String, dynamic> json) =
      _$KycUsersImpl.fromJson;

  @override
  String get secretKey;
  @override
  String get userPK;
  @override
  String get partnerToken;
  @override
  @JsonKey(ignore: true)
  _$$KycUsersImplCopyWith<_$KycUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
