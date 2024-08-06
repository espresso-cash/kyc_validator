//
//  Generated code. Do not modify.
//  source: partner.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'partner.pb.dart' as $2;

export 'partner.pb.dart';

@$pb.GrpcServiceName('kyc.PartnerService')
class PartnerServiceClient extends $grpc.Client {
  static final _$sendUserData = $grpc.ClientMethod<$2.SendUserDataRequest, $2.SendUserDataResponse>(
      '/kyc.PartnerService/SendUserData',
      ($2.SendUserDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SendUserDataResponse.fromBuffer(value));
  static final _$fetchUserData = $grpc.ClientMethod<$2.FetchPartnerUsersRequest, $2.FetchPartnerUsersResponse>(
      '/kyc.PartnerService/FetchUserData',
      ($2.FetchPartnerUsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.FetchPartnerUsersResponse.fromBuffer(value));

  PartnerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.SendUserDataResponse> sendUserData($2.SendUserDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendUserData, request, options: options);
  }

  $grpc.ResponseFuture<$2.FetchPartnerUsersResponse> fetchUserData($2.FetchPartnerUsersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchUserData, request, options: options);
  }
}

@$pb.GrpcServiceName('kyc.PartnerService')
abstract class PartnerServiceBase extends $grpc.Service {
  $core.String get $name => 'kyc.PartnerService';

  PartnerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.SendUserDataRequest, $2.SendUserDataResponse>(
        'SendUserData',
        sendUserData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendUserDataRequest.fromBuffer(value),
        ($2.SendUserDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchPartnerUsersRequest, $2.FetchPartnerUsersResponse>(
        'FetchUserData',
        fetchUserData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchPartnerUsersRequest.fromBuffer(value),
        ($2.FetchPartnerUsersResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.SendUserDataResponse> sendUserData_Pre($grpc.ServiceCall call, $async.Future<$2.SendUserDataRequest> request) async {
    return sendUserData(call, await request);
  }

  $async.Future<$2.FetchPartnerUsersResponse> fetchUserData_Pre($grpc.ServiceCall call, $async.Future<$2.FetchPartnerUsersRequest> request) async {
    return fetchUserData(call, await request);
  }

  $async.Future<$2.SendUserDataResponse> sendUserData($grpc.ServiceCall call, $2.SendUserDataRequest request);
  $async.Future<$2.FetchPartnerUsersResponse> fetchUserData($grpc.ServiceCall call, $2.FetchPartnerUsersRequest request);
}
