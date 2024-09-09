//
//  Generated code. Do not modify.
//  source: kyc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class KycRequest extends $pb.GeneratedMessage {
  factory KycRequest({
    $core.String? secretKey,
    $core.String? userAuthPk,
    $core.String? userPublicKey,
  }) {
    final $result = create();
    if (secretKey != null) {
      $result.secretKey = secretKey;
    }
    if (userAuthPk != null) {
      $result.userAuthPk = userAuthPk;
    }
    if (userPublicKey != null) {
      $result.userPublicKey = userPublicKey;
    }
    return $result;
  }
  KycRequest._() : super();
  factory KycRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KycRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'validator'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'secretKey', protoName: 'secretKey')
    ..aOS(2, _omitFieldNames ? '' : 'userAuthPk', protoName: 'userAuthPk')
    ..aOS(3, _omitFieldNames ? '' : 'userPublicKey', protoName: 'userPublicKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycRequest clone() => KycRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycRequest copyWith(void Function(KycRequest) updates) => super.copyWith((message) => updates(message as KycRequest)) as KycRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KycRequest create() => KycRequest._();
  KycRequest createEmptyInstance() => create();
  static $pb.PbList<KycRequest> createRepeated() => $pb.PbList<KycRequest>();
  @$core.pragma('dart2js:noInline')
  static KycRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycRequest>(create);
  static KycRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get secretKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set secretKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecretKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userAuthPk => $_getSZ(1);
  @$pb.TagNumber(2)
  set userAuthPk($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserAuthPk() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserAuthPk() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userPublicKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set userPublicKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserPublicKey() => clearField(3);
}

class KycResponse extends $pb.GeneratedMessage {
  factory KycResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  KycResponse._() : super();
  factory KycResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KycResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'validator'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycResponse clone() => KycResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycResponse copyWith(void Function(KycResponse) updates) => super.copyWith((message) => updates(message as KycResponse)) as KycResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KycResponse create() => KycResponse._();
  KycResponse createEmptyInstance() => create();
  static $pb.PbList<KycResponse> createRepeated() => $pb.PbList<KycResponse>();
  @$core.pragma('dart2js:noInline')
  static KycResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycResponse>(create);
  static KycResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
