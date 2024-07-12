// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpMessage _$OtpMessageFromJson(Map<String, dynamic> json) {
  return _OtpMessage.fromJson(json);
}

/// @nodoc
mixin _$OtpMessage {
  DataInfoKeys get identifier => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  DateTime get expiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpMessageCopyWith<OtpMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpMessageCopyWith<$Res> {
  factory $OtpMessageCopyWith(
          OtpMessage value, $Res Function(OtpMessage) then) =
      _$OtpMessageCopyWithImpl<$Res, OtpMessage>;
  @useResult
  $Res call({DataInfoKeys identifier, String otp, DateTime expiry});
}

/// @nodoc
class _$OtpMessageCopyWithImpl<$Res, $Val extends OtpMessage>
    implements $OtpMessageCopyWith<$Res> {
  _$OtpMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? otp = null,
    Object? expiry = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as DataInfoKeys,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpMessageImplCopyWith<$Res>
    implements $OtpMessageCopyWith<$Res> {
  factory _$$OtpMessageImplCopyWith(
          _$OtpMessageImpl value, $Res Function(_$OtpMessageImpl) then) =
      __$$OtpMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataInfoKeys identifier, String otp, DateTime expiry});
}

/// @nodoc
class __$$OtpMessageImplCopyWithImpl<$Res>
    extends _$OtpMessageCopyWithImpl<$Res, _$OtpMessageImpl>
    implements _$$OtpMessageImplCopyWith<$Res> {
  __$$OtpMessageImplCopyWithImpl(
      _$OtpMessageImpl _value, $Res Function(_$OtpMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? otp = null,
    Object? expiry = null,
  }) {
    return _then(_$OtpMessageImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as DataInfoKeys,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpMessageImpl implements _OtpMessage {
  const _$OtpMessageImpl(
      {required this.identifier, required this.otp, required this.expiry});

  factory _$OtpMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpMessageImplFromJson(json);

  @override
  final DataInfoKeys identifier;
  @override
  final String otp;
  @override
  final DateTime expiry;

  @override
  String toString() {
    return 'OtpMessage(identifier: $identifier, otp: $otp, expiry: $expiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpMessageImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, otp, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpMessageImplCopyWith<_$OtpMessageImpl> get copyWith =>
      __$$OtpMessageImplCopyWithImpl<_$OtpMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpMessageImplToJson(
      this,
    );
  }
}

abstract class _OtpMessage implements OtpMessage {
  const factory _OtpMessage(
      {required final DataInfoKeys identifier,
      required final String otp,
      required final DateTime expiry}) = _$OtpMessageImpl;

  factory _OtpMessage.fromJson(Map<String, dynamic> json) =
      _$OtpMessageImpl.fromJson;

  @override
  DataInfoKeys get identifier;
  @override
  String get otp;
  @override
  DateTime get expiry;
  @override
  @JsonKey(ignore: true)
  _$$OtpMessageImplCopyWith<_$OtpMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
