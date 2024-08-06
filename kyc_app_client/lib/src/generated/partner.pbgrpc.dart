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
  static final _$sendUserData = $grpc.ClientMethod<$2.SendDataRequest, $2.SendDataResponse>(
      '/kyc.PartnerService/SendUserData',
      ($2.SendDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SendDataResponse.fromBuffer(value));
  static final _$fetchUserData = $grpc.ClientMethod<$2.FetchUserRequest, $2.FetchUserResponse>(
      '/kyc.PartnerService/FetchUserData',
      ($2.FetchUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.FetchUserResponse.fromBuffer(value));

  PartnerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.SendDataResponse> sendUserData($2.SendDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendUserData, request, options: options);
  }

  $grpc.ResponseFuture<$2.FetchUserResponse> fetchUserData($2.FetchUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchUserData, request, options: options);
  }
}

@$pb.GrpcServiceName('kyc.PartnerService')
abstract class PartnerServiceBase extends $grpc.Service {
  $core.String get $name => 'kyc.PartnerService';

  PartnerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.SendDataRequest, $2.SendDataResponse>(
        'SendUserData',
        sendUserData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendDataRequest.fromBuffer(value),
        ($2.SendDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchUserRequest, $2.FetchUserResponse>(
        'FetchUserData',
        fetchUserData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchUserRequest.fromBuffer(value),
        ($2.FetchUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.SendDataResponse> sendUserData_Pre($grpc.ServiceCall call, $async.Future<$2.SendDataRequest> request) async {
    return sendUserData(call, await request);
  }

  $async.Future<$2.FetchUserResponse> fetchUserData_Pre($grpc.ServiceCall call, $async.Future<$2.FetchUserRequest> request) async {
    return fetchUserData(call, await request);
  }

  $async.Future<$2.SendDataResponse> sendUserData($grpc.ServiceCall call, $2.SendDataRequest request);
  $async.Future<$2.FetchUserResponse> fetchUserData($grpc.ServiceCall call, $2.FetchUserRequest request);
}
