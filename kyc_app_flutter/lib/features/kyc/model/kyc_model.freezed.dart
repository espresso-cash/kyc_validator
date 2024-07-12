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

KycUserInfo _$KycUserInfoFromJson(Map<String, dynamic> json) {
  return _KycUserInfo.fromJson(json);
}

/// @nodoc
mixin _$KycUserInfo {
  String get firstName => throw _privateConstructorUsedError;
  String get middleName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get idType => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KycUserInfoCopyWith<KycUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycUserInfoCopyWith<$Res> {
  factory $KycUserInfoCopyWith(
          KycUserInfo value, $Res Function(KycUserInfo) then) =
      _$KycUserInfoCopyWithImpl<$Res, KycUserInfo>;
  @useResult
  $Res call(
      {String firstName,
      String middleName,
      String lastName,
      String dob,
      String countryCode,
      String idType,
      String idNumber});
}

/// @nodoc
class _$KycUserInfoCopyWithImpl<$Res, $Val extends KycUserInfo>
    implements $KycUserInfoCopyWith<$Res> {
  _$KycUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? dob = null,
    Object? countryCode = null,
    Object? idType = null,
    Object? idNumber = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycUserInfoImplCopyWith<$Res>
    implements $KycUserInfoCopyWith<$Res> {
  factory _$$KycUserInfoImplCopyWith(
          _$KycUserInfoImpl value, $Res Function(_$KycUserInfoImpl) then) =
      __$$KycUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String middleName,
      String lastName,
      String dob,
      String countryCode,
      String idType,
      String idNumber});
}

/// @nodoc
class __$$KycUserInfoImplCopyWithImpl<$Res>
    extends _$KycUserInfoCopyWithImpl<$Res, _$KycUserInfoImpl>
    implements _$$KycUserInfoImplCopyWith<$Res> {
  __$$KycUserInfoImplCopyWithImpl(
      _$KycUserInfoImpl _value, $Res Function(_$KycUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? dob = null,
    Object? countryCode = null,
    Object? idType = null,
    Object? idNumber = null,
  }) {
    return _then(_$KycUserInfoImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycUserInfoImpl extends _KycUserInfo {
  _$KycUserInfoImpl(
      {required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.dob,
      required this.countryCode,
      required this.idType,
      required this.idNumber})
      : super._();

  factory _$KycUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycUserInfoImplFromJson(json);

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
  String toString() {
    return 'KycUserInfo(firstName: $firstName, middleName: $middleName, lastName: $lastName, dob: $dob, countryCode: $countryCode, idType: $idType, idNumber: $idNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycUserInfoImpl &&
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
                other.idNumber == idNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, middleName, lastName,
      dob, countryCode, idType, idNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KycUserInfoImplCopyWith<_$KycUserInfoImpl> get copyWith =>
      __$$KycUserInfoImplCopyWithImpl<_$KycUserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycUserInfoImplToJson(
      this,
    );
  }
}

abstract class _KycUserInfo extends KycUserInfo {
  factory _KycUserInfo(
      {required final String firstName,
      required final String middleName,
      required final String lastName,
      required final String dob,
      required final String countryCode,
      required final String idType,
      required final String idNumber}) = _$KycUserInfoImpl;
  _KycUserInfo._() : super._();

  factory _KycUserInfo.fromJson(Map<String, dynamic> json) =
      _$KycUserInfoImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$KycUserInfoImplCopyWith<_$KycUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
