//
//  Generated code. Do not modify.
//  source: otp.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SendOtpRequest extends $pb.GeneratedMessage {
  factory SendOtpRequest({
    $core.String? secretKey,
    $core.String? userPk,
  }) {
    final $result = create();
    if (secretKey != null) {
      $result.secretKey = secretKey;
    }
    if (userPk != null) {
      $result.userPk = userPk;
    }
    return $result;
  }
  SendOtpRequest._() : super();
  factory SendOtpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendOtpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendOtpRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'validator'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'secretKey', protoName: 'secretKey')
    ..aOS(2, _omitFieldNames ? '' : 'userPk', protoName: 'userPk')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendOtpRequest clone() => SendOtpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendOtpRequest copyWith(void Function(SendOtpRequest) updates) => super.copyWith((message) => updates(message as SendOtpRequest)) as SendOtpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendOtpRequest create() => SendOtpRequest._();
  SendOtpRequest createEmptyInstance() => create();
  static $pb.PbList<SendOtpRequest> createRepeated() => $pb.PbList<SendOtpRequest>();
  @$core.pragma('dart2js:noInline')
  static SendOtpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendOtpRequest>(create);
  static SendOtpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get secretKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set secretKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecretKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userPk => $_getSZ(1);
  @$pb.TagNumber(2)
  set userPk($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserPk() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserPk() => clearField(2);
}

class SendOtpResponse extends $pb.GeneratedMessage {
  factory SendOtpResponse({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SendOtpResponse._() : super();
  factory SendOtpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendOtpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendOtpResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'validator'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendOtpResponse clone() => SendOtpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendOtpResponse copyWith(void Function(SendOtpResponse) updates) => super.copyWith((message) => updates(message as SendOtpResponse)) as SendOtpResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendOtpResponse create() => SendOtpResponse._();
  SendOtpResponse createEmptyInstance() => create();
  static $pb.PbList<SendOtpResponse> createRepeated() => $pb.PbList<SendOtpResponse>();
  @$core.pragma('dart2js:noInline')
  static SendOtpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendOtpResponse>(create);
  static SendOtpResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class VerifyOtpRequest extends $pb.GeneratedMessage {
  factory VerifyOtpRequest({
    $core.String? identifier,
    $core.String? userPk,
    $core.String? secretKey,
    $core.String? otp,
  }) {
    final $result = create();
    if (identifier != null) {
      $result.identifier = identifier;
    }
    if (userPk != null) {
      $result.userPk = userPk;
    }
    if (secretKey != null) {
      $result.secretKey = secretKey;
    }
    if (otp != null) {
      $result.otp = otp;
    }
    return $result;
  }
  VerifyOtpRequest._() : super();
  factory VerifyOtpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyOtpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyOtpRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'validator'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identifier')
    ..aOS(2, _omitFieldNames ? '' : 'userPk', protoName: 'userPk')
    ..aOS(3, _omitFieldNames ? '' : 'secretKey', protoName: 'secretKey')
    ..aOS(4, _omitFieldNames ? '' : 'otp')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyOtpRequest clone() => VerifyOtpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyOtpRequest copyWith(void Function(VerifyOtpRequest) updates) => super.copyWith((message) => updates(message as VerifyOtpRequest)) as VerifyOtpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyOtpRequest create() => VerifyOtpRequest._();
  VerifyOtpRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyOtpRequest> createRepeated() => $pb.PbList<VerifyOtpRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyOtpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyOtpRequest>(create);
  static VerifyOtpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set identifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userPk => $_getSZ(1);
  @$pb.TagNumber(2)
  set userPk($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserPk() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserPk() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get secretKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set secretKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecretKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecretKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get otp => $_getSZ(3);
  @$pb.TagNumber(4)
  set otp($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOtp() => $_has(3);
  @$pb.TagNumber(4)
  void clearOtp() => clearField(4);
}

class VerifyOtpResponse extends $pb.GeneratedMessage {
  factory VerifyOtpResponse({
    $core.bool? isValid,
  }) {
    final $result = create();
    if (isValid != null) {
      $result.isValid = isValid;
    }
    return $result;
  }
  VerifyOtpResponse._() : super();
  factory VerifyOtpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyOtpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyOtpResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'validator'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isValid', protoName: 'isValid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyOtpResponse clone() => VerifyOtpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyOtpResponse copyWith(void Function(VerifyOtpResponse) updates) => super.copyWith((message) => updates(message as VerifyOtpResponse)) as VerifyOtpResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyOtpResponse create() => VerifyOtpResponse._();
  VerifyOtpResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyOtpResponse> createRepeated() => $pb.PbList<VerifyOtpResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyOtpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyOtpResponse>(create);
  static VerifyOtpResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isValid => $_getBF(0);
  @$pb.TagNumber(1)
  set isValid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsValid() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
