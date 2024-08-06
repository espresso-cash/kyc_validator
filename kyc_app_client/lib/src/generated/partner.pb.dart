//
//  Generated code. Do not modify.
//  source: partner.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserData extends $pb.GeneratedMessage {
  factory UserData({
    $core.String? secretKey,
    $core.String? partnerToken,
    $core.String? userPk,
  }) {
    final $result = create();
    if (secretKey != null) {
      $result.secretKey = secretKey;
    }
    if (partnerToken != null) {
      $result.partnerToken = partnerToken;
    }
    if (userPk != null) {
      $result.userPk = userPk;
    }
    return $result;
  }
  UserData._() : super();
  factory UserData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserData', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'secretKey', protoName: 'secretKey')
    ..aOS(2, _omitFieldNames ? '' : 'partnerToken', protoName: 'partnerToken')
    ..aOS(3, _omitFieldNames ? '' : 'userPk', protoName: 'userPk')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserData clone() => UserData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserData copyWith(void Function(UserData) updates) => super.copyWith((message) => updates(message as UserData)) as UserData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserData create() => UserData._();
  UserData createEmptyInstance() => create();
  static $pb.PbList<UserData> createRepeated() => $pb.PbList<UserData>();
  @$core.pragma('dart2js:noInline')
  static UserData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserData>(create);
  static UserData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get secretKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set secretKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecretKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get partnerToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set partnerToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPartnerToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartnerToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userPk => $_getSZ(2);
  @$pb.TagNumber(3)
  set userPk($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserPk() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserPk() => clearField(3);
}

class SendDataRequest extends $pb.GeneratedMessage {
  factory SendDataRequest({
    UserData? userData,
    $core.String? partnerPk,
  }) {
    final $result = create();
    if (userData != null) {
      $result.userData = userData;
    }
    if (partnerPk != null) {
      $result.partnerPk = partnerPk;
    }
    return $result;
  }
  SendDataRequest._() : super();
  factory SendDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..aOM<UserData>(1, _omitFieldNames ? '' : 'userData', protoName: 'userData', subBuilder: UserData.create)
    ..aOS(2, _omitFieldNames ? '' : 'partnerPk', protoName: 'partnerPk')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendDataRequest clone() => SendDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendDataRequest copyWith(void Function(SendDataRequest) updates) => super.copyWith((message) => updates(message as SendDataRequest)) as SendDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendDataRequest create() => SendDataRequest._();
  SendDataRequest createEmptyInstance() => create();
  static $pb.PbList<SendDataRequest> createRepeated() => $pb.PbList<SendDataRequest>();
  @$core.pragma('dart2js:noInline')
  static SendDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendDataRequest>(create);
  static SendDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  UserData get userData => $_getN(0);
  @$pb.TagNumber(1)
  set userData(UserData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserData() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserData() => clearField(1);
  @$pb.TagNumber(1)
  UserData ensureUserData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get partnerPk => $_getSZ(1);
  @$pb.TagNumber(2)
  set partnerPk($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPartnerPk() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartnerPk() => clearField(2);
}

class SendDataResponse extends $pb.GeneratedMessage {
  factory SendDataResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  SendDataResponse._() : super();
  factory SendDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendDataResponse clone() => SendDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendDataResponse copyWith(void Function(SendDataResponse) updates) => super.copyWith((message) => updates(message as SendDataResponse)) as SendDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendDataResponse create() => SendDataResponse._();
  SendDataResponse createEmptyInstance() => create();
  static $pb.PbList<SendDataResponse> createRepeated() => $pb.PbList<SendDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SendDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendDataResponse>(create);
  static SendDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class FetchUserRequest extends $pb.GeneratedMessage {
  factory FetchUserRequest({
    $core.String? partnerPk,
  }) {
    final $result = create();
    if (partnerPk != null) {
      $result.partnerPk = partnerPk;
    }
    return $result;
  }
  FetchUserRequest._() : super();
  factory FetchUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'partnerPk', protoName: 'partnerPk')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchUserRequest clone() => FetchUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchUserRequest copyWith(void Function(FetchUserRequest) updates) => super.copyWith((message) => updates(message as FetchUserRequest)) as FetchUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchUserRequest create() => FetchUserRequest._();
  FetchUserRequest createEmptyInstance() => create();
  static $pb.PbList<FetchUserRequest> createRepeated() => $pb.PbList<FetchUserRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchUserRequest>(create);
  static FetchUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get partnerPk => $_getSZ(0);
  @$pb.TagNumber(1)
  set partnerPk($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartnerPk() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartnerPk() => clearField(1);
}

class FetchUserResponse extends $pb.GeneratedMessage {
  factory FetchUserResponse({
    $core.Iterable<UserData>? userData,
  }) {
    final $result = create();
    if (userData != null) {
      $result.userData.addAll(userData);
    }
    return $result;
  }
  FetchUserResponse._() : super();
  factory FetchUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..pc<UserData>(1, _omitFieldNames ? '' : 'userData', $pb.PbFieldType.PM, protoName: 'userData', subBuilder: UserData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchUserResponse clone() => FetchUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchUserResponse copyWith(void Function(FetchUserResponse) updates) => super.copyWith((message) => updates(message as FetchUserResponse)) as FetchUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchUserResponse create() => FetchUserResponse._();
  FetchUserResponse createEmptyInstance() => create();
  static $pb.PbList<FetchUserResponse> createRepeated() => $pb.PbList<FetchUserResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchUserResponse>(create);
  static FetchUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserData> get userData => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
