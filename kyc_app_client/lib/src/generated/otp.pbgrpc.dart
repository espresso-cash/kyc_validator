//
//  Generated code. Do not modify.
//  source: otp.proto
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

import 'otp.pb.dart' as $1;

export 'otp.pb.dart';

@$pb.GrpcServiceName('kyc.OtpService')
class OtpServiceClient extends $grpc.Client {
  static final _$sendOtpByEmail = $grpc.ClientMethod<$1.SendOtpRequest, $1.SendOtpResponse>(
      '/kyc.OtpService/SendOtpByEmail',
      ($1.SendOtpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SendOtpResponse.fromBuffer(value));
  static final _$sendOtpBySms = $grpc.ClientMethod<$1.SendOtpRequest, $1.SendOtpResponse>(
      '/kyc.OtpService/SendOtpBySms',
      ($1.SendOtpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SendOtpResponse.fromBuffer(value));
  static final _$verifyOtp = $grpc.ClientMethod<$1.VerifyOtpRequest, $1.VerifyOtpResponse>(
      '/kyc.OtpService/VerifyOtp',
      ($1.VerifyOtpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.VerifyOtpResponse.fromBuffer(value));

  OtpServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.SendOtpResponse> sendOtpByEmail($1.SendOtpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendOtpByEmail, request, options: options);
  }

  $grpc.ResponseFuture<$1.SendOtpResponse> sendOtpBySms($1.SendOtpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendOtpBySms, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerifyOtpResponse> verifyOtp($1.VerifyOtpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyOtp, request, options: options);
  }
}

@$pb.GrpcServiceName('kyc.OtpService')
abstract class OtpServiceBase extends $grpc.Service {
  $core.String get $name => 'kyc.OtpService';

  OtpServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.SendOtpRequest, $1.SendOtpResponse>(
        'SendOtpByEmail',
        sendOtpByEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SendOtpRequest.fromBuffer(value),
        ($1.SendOtpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SendOtpRequest, $1.SendOtpResponse>(
        'SendOtpBySms',
        sendOtpBySms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SendOtpRequest.fromBuffer(value),
        ($1.SendOtpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VerifyOtpRequest, $1.VerifyOtpResponse>(
        'VerifyOtp',
        verifyOtp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.VerifyOtpRequest.fromBuffer(value),
        ($1.VerifyOtpResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.SendOtpResponse> sendOtpByEmail_Pre($grpc.ServiceCall call, $async.Future<$1.SendOtpRequest> request) async {
    return sendOtpByEmail(call, await request);
  }

  $async.Future<$1.SendOtpResponse> sendOtpBySms_Pre($grpc.ServiceCall call, $async.Future<$1.SendOtpRequest> request) async {
    return sendOtpBySms(call, await request);
  }

  $async.Future<$1.VerifyOtpResponse> verifyOtp_Pre($grpc.ServiceCall call, $async.Future<$1.VerifyOtpRequest> request) async {
    return verifyOtp(call, await request);
  }

  $async.Future<$1.SendOtpResponse> sendOtpByEmail($grpc.ServiceCall call, $1.SendOtpRequest request);
  $async.Future<$1.SendOtpResponse> sendOtpBySms($grpc.ServiceCall call, $1.SendOtpRequest request);
  $async.Future<$1.VerifyOtpResponse> verifyOtp($grpc.ServiceCall call, $1.VerifyOtpRequest request);
}
