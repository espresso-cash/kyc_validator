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

SendSmsRequestDto _$SendSmsRequestDtoFromJson(Map<String, dynamic> json) {
  return _SendSmsRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SendSmsRequestDto {
  String get to => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendSmsRequestDtoCopyWith<SendSmsRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendSmsRequestDtoCopyWith<$Res> {
  factory $SendSmsRequestDtoCopyWith(
          SendSmsRequestDto value, $Res Function(SendSmsRequestDto) then) =
      _$SendSmsRequestDtoCopyWithImpl<$Res, SendSmsRequestDto>;
  @useResult
  $Res call({String to, String from, String body});
}

/// @nodoc
class _$SendSmsRequestDtoCopyWithImpl<$Res, $Val extends SendSmsRequestDto>
    implements $SendSmsRequestDtoCopyWith<$Res> {
  _$SendSmsRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? from = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendSmsRequestDtoImplCopyWith<$Res>
    implements $SendSmsRequestDtoCopyWith<$Res> {
  factory _$$SendSmsRequestDtoImplCopyWith(_$SendSmsRequestDtoImpl value,
          $Res Function(_$SendSmsRequestDtoImpl) then) =
      __$$SendSmsRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String to, String from, String body});
}

/// @nodoc
class __$$SendSmsRequestDtoImplCopyWithImpl<$Res>
    extends _$SendSmsRequestDtoCopyWithImpl<$Res, _$SendSmsRequestDtoImpl>
    implements _$$SendSmsRequestDtoImplCopyWith<$Res> {
  __$$SendSmsRequestDtoImplCopyWithImpl(_$SendSmsRequestDtoImpl _value,
      $Res Function(_$SendSmsRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? from = null,
    Object? body = null,
  }) {
    return _then(_$SendSmsRequestDtoImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$SendSmsRequestDtoImpl implements _SendSmsRequestDto {
  const _$SendSmsRequestDtoImpl(
      {required this.to, required this.from, required this.body});

  factory _$SendSmsRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendSmsRequestDtoImplFromJson(json);

  @override
  final String to;
  @override
  final String from;
  @override
  final String body;

  @override
  String toString() {
    return 'SendSmsRequestDto(to: $to, from: $from, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSmsRequestDtoImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, to, from, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSmsRequestDtoImplCopyWith<_$SendSmsRequestDtoImpl> get copyWith =>
      __$$SendSmsRequestDtoImplCopyWithImpl<_$SendSmsRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendSmsRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _SendSmsRequestDto implements SendSmsRequestDto {
  const factory _SendSmsRequestDto(
      {required final String to,
      required final String from,
      required final String body}) = _$SendSmsRequestDtoImpl;

  factory _SendSmsRequestDto.fromJson(Map<String, dynamic> json) =
      _$SendSmsRequestDtoImpl.fromJson;

  @override
  String get to;
  @override
  String get from;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$SendSmsRequestDtoImplCopyWith<_$SendSmsRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendSmsResponseDto _$SendSmsResponseDtoFromJson(Map<String, dynamic> json) {
  return _SendSmsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SendSmsResponseDto {
  String get accountSid => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendSmsResponseDtoCopyWith<SendSmsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendSmsResponseDtoCopyWith<$Res> {
  factory $SendSmsResponseDtoCopyWith(
          SendSmsResponseDto value, $Res Function(SendSmsResponseDto) then) =
      _$SendSmsResponseDtoCopyWithImpl<$Res, SendSmsResponseDto>;
  @useResult
  $Res call(
      {String accountSid,
      String status,
      String to,
      String from,
      String body,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$SendSmsResponseDtoCopyWithImpl<$Res, $Val extends SendSmsResponseDto>
    implements $SendSmsResponseDtoCopyWith<$Res> {
  _$SendSmsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountSid = null,
    Object? status = null,
    Object? to = null,
    Object? from = null,
    Object? body = null,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      accountSid: null == accountSid
          ? _value.accountSid
          : accountSid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendSmsResponseDtoImplCopyWith<$Res>
    implements $SendSmsResponseDtoCopyWith<$Res> {
  factory _$$SendSmsResponseDtoImplCopyWith(_$SendSmsResponseDtoImpl value,
          $Res Function(_$SendSmsResponseDtoImpl) then) =
      __$$SendSmsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountSid,
      String status,
      String to,
      String from,
      String body,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$SendSmsResponseDtoImplCopyWithImpl<$Res>
    extends _$SendSmsResponseDtoCopyWithImpl<$Res, _$SendSmsResponseDtoImpl>
    implements _$$SendSmsResponseDtoImplCopyWith<$Res> {
  __$$SendSmsResponseDtoImplCopyWithImpl(_$SendSmsResponseDtoImpl _value,
      $Res Function(_$SendSmsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountSid = null,
    Object? status = null,
    Object? to = null,
    Object? from = null,
    Object? body = null,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SendSmsResponseDtoImpl(
      accountSid: null == accountSid
          ? _value.accountSid
          : accountSid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SendSmsResponseDtoImpl implements _SendSmsResponseDto {
  const _$SendSmsResponseDtoImpl(
      {required this.accountSid,
      required this.status,
      required this.to,
      required this.from,
      required this.body,
      this.errorCode,
      this.errorMessage});

  factory _$SendSmsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendSmsResponseDtoImplFromJson(json);

  @override
  final String accountSid;
  @override
  final String status;
  @override
  final String to;
  @override
  final String from;
  @override
  final String body;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SendSmsResponseDto(accountSid: $accountSid, status: $status, to: $to, from: $from, body: $body, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSmsResponseDtoImpl &&
            (identical(other.accountSid, accountSid) ||
                other.accountSid == accountSid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accountSid, status, to, from, body, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSmsResponseDtoImplCopyWith<_$SendSmsResponseDtoImpl> get copyWith =>
      __$$SendSmsResponseDtoImplCopyWithImpl<_$SendSmsResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendSmsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _SendSmsResponseDto implements SendSmsResponseDto {
  const factory _SendSmsResponseDto(
      {required final String accountSid,
      required final String status,
      required final String to,
      required final String from,
      required final String body,
      final String? errorCode,
      final String? errorMessage}) = _$SendSmsResponseDtoImpl;

  factory _SendSmsResponseDto.fromJson(Map<String, dynamic> json) =
      _$SendSmsResponseDtoImpl.fromJson;

  @override
  String get accountSid;
  @override
  String get status;
  @override
  String get to;
  @override
  String get from;
  @override
  String get body;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SendSmsResponseDtoImplCopyWith<_$SendSmsResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
