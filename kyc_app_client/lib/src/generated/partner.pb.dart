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

class User extends $pb.GeneratedMessage {
  factory User({
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
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'secretKey', protoName: 'secretKey')
    ..aOS(2, _omitFieldNames ? '' : 'partnerToken', protoName: 'partnerToken')
    ..aOS(3, _omitFieldNames ? '' : 'userPk', protoName: 'userPk')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

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

class SendUserDataRequest extends $pb.GeneratedMessage {
  factory SendUserDataRequest({
    User? user,
    $core.String? partnerPk,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (partnerPk != null) {
      $result.partnerPk = partnerPk;
    }
    return $result;
  }
  SendUserDataRequest._() : super();
  factory SendUserDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendUserDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendUserDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..aOM<User>(1, _omitFieldNames ? '' : 'user', subBuilder: User.create)
    ..aOS(2, _omitFieldNames ? '' : 'partnerPk', protoName: 'partnerPk')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendUserDataRequest clone() => SendUserDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendUserDataRequest copyWith(void Function(SendUserDataRequest) updates) => super.copyWith((message) => updates(message as SendUserDataRequest)) as SendUserDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendUserDataRequest create() => SendUserDataRequest._();
  SendUserDataRequest createEmptyInstance() => create();
  static $pb.PbList<SendUserDataRequest> createRepeated() => $pb.PbList<SendUserDataRequest>();
  @$core.pragma('dart2js:noInline')
  static SendUserDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendUserDataRequest>(create);
  static SendUserDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get partnerPk => $_getSZ(1);
  @$pb.TagNumber(2)
  set partnerPk($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPartnerPk() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartnerPk() => clearField(2);
}

class SendUserDataResponse extends $pb.GeneratedMessage {
  factory SendUserDataResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  SendUserDataResponse._() : super();
  factory SendUserDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendUserDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendUserDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendUserDataResponse clone() => SendUserDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendUserDataResponse copyWith(void Function(SendUserDataResponse) updates) => super.copyWith((message) => updates(message as SendUserDataResponse)) as SendUserDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendUserDataResponse create() => SendUserDataResponse._();
  SendUserDataResponse createEmptyInstance() => create();
  static $pb.PbList<SendUserDataResponse> createRepeated() => $pb.PbList<SendUserDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SendUserDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendUserDataResponse>(create);
  static SendUserDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class FetchPartnerUsersRequest extends $pb.GeneratedMessage {
  factory FetchPartnerUsersRequest({
    $core.String? partnerPk,
  }) {
    final $result = create();
    if (partnerPk != null) {
      $result.partnerPk = partnerPk;
    }
    return $result;
  }
  FetchPartnerUsersRequest._() : super();
  factory FetchPartnerUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchPartnerUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchPartnerUsersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'partnerPk', protoName: 'partnerPk')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchPartnerUsersRequest clone() => FetchPartnerUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchPartnerUsersRequest copyWith(void Function(FetchPartnerUsersRequest) updates) => super.copyWith((message) => updates(message as FetchPartnerUsersRequest)) as FetchPartnerUsersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchPartnerUsersRequest create() => FetchPartnerUsersRequest._();
  FetchPartnerUsersRequest createEmptyInstance() => create();
  static $pb.PbList<FetchPartnerUsersRequest> createRepeated() => $pb.PbList<FetchPartnerUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchPartnerUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchPartnerUsersRequest>(create);
  static FetchPartnerUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get partnerPk => $_getSZ(0);
  @$pb.TagNumber(1)
  set partnerPk($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartnerPk() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartnerPk() => clearField(1);
}

class FetchPartnerUsersResponse extends $pb.GeneratedMessage {
  factory FetchPartnerUsersResponse({
    $core.Iterable<User>? users,
  }) {
    final $result = create();
    if (users != null) {
      $result.users.addAll(users);
    }
    return $result;
  }
  FetchPartnerUsersResponse._() : super();
  factory FetchPartnerUsersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchPartnerUsersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchPartnerUsersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kyc'), createEmptyInstance: create)
    ..pc<User>(1, _omitFieldNames ? '' : 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchPartnerUsersResponse clone() => FetchPartnerUsersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchPartnerUsersResponse copyWith(void Function(FetchPartnerUsersResponse) updates) => super.copyWith((message) => updates(message as FetchPartnerUsersResponse)) as FetchPartnerUsersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchPartnerUsersResponse create() => FetchPartnerUsersResponse._();
  FetchPartnerUsersResponse createEmptyInstance() => create();
  static $pb.PbList<FetchPartnerUsersResponse> createRepeated() => $pb.PbList<FetchPartnerUsersResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchPartnerUsersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchPartnerUsersResponse>(create);
  static FetchPartnerUsersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get users => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
