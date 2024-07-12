//
//  Generated code. Do not modify.
//  source: kyc.proto
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

import 'kyc.pb.dart' as $0;

export 'kyc.pb.dart';

@$pb.GrpcServiceName('kyc.KycService')
class KycServiceClient extends $grpc.Client {
  static final _$requestKyc = $grpc.ClientMethod<$0.KycRequest, $0.KycResponse>(
      '/kyc.KycService/RequestKyc',
      ($0.KycRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.KycResponse.fromBuffer(value));

  KycServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.KycResponse> requestKyc($0.KycRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestKyc, request, options: options);
  }
}

@$pb.GrpcServiceName('kyc.KycService')
abstract class KycServiceBase extends $grpc.Service {
  $core.String get $name => 'kyc.KycService';

  KycServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.KycRequest, $0.KycResponse>(
        'RequestKyc',
        requestKyc_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.KycRequest.fromBuffer(value),
        ($0.KycResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.KycResponse> requestKyc_Pre($grpc.ServiceCall call, $async.Future<$0.KycRequest> request) async {
    return requestKyc(call, await request);
  }

  $async.Future<$0.KycResponse> requestKyc($grpc.ServiceCall call, $0.KycRequest request);
}
