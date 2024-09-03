//
//  Generated code. Do not modify.
//  source: otp.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sendOtpRequestDescriptor instead')
const SendOtpRequest$json = {
  '1': 'SendOtpRequest',
  '2': [
    {'1': 'secretKey', '3': 1, '4': 1, '5': 9, '10': 'secretKey'},
    {'1': 'userPk', '3': 2, '4': 1, '5': 9, '10': 'userPk'},
  ],
};

/// Descriptor for `SendOtpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendOtpRequestDescriptor = $convert.base64Decode(
    'Cg5TZW5kT3RwUmVxdWVzdBIcCglzZWNyZXRLZXkYASABKAlSCXNlY3JldEtleRIWCgZ1c2VyUG'
    'sYAiABKAlSBnVzZXJQaw==');

@$core.Deprecated('Use sendOtpResponseDescriptor instead')
const SendOtpResponse$json = {
  '1': 'SendOtpResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `SendOtpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendOtpResponseDescriptor = $convert.base64Decode(
    'Cg9TZW5kT3RwUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXM=');

@$core.Deprecated('Use verifyOtpRequestDescriptor instead')
const VerifyOtpRequest$json = {
  '1': 'VerifyOtpRequest',
  '2': [
    {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    {'1': 'userPk', '3': 2, '4': 1, '5': 9, '10': 'userPk'},
    {'1': 'secretKey', '3': 3, '4': 1, '5': 9, '10': 'secretKey'},
    {'1': 'otp', '3': 4, '4': 1, '5': 9, '10': 'otp'},
  ],
};

/// Descriptor for `VerifyOtpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyOtpRequestDescriptor = $convert.base64Decode(
    'ChBWZXJpZnlPdHBSZXF1ZXN0Eh4KCmlkZW50aWZpZXIYASABKAlSCmlkZW50aWZpZXISFgoGdX'
    'NlclBrGAIgASgJUgZ1c2VyUGsSHAoJc2VjcmV0S2V5GAMgASgJUglzZWNyZXRLZXkSEAoDb3Rw'
    'GAQgASgJUgNvdHA=');

@$core.Deprecated('Use verifyOtpResponseDescriptor instead')
const VerifyOtpResponse$json = {
  '1': 'VerifyOtpResponse',
  '2': [
    {'1': 'isValid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
  ],
};

/// Descriptor for `VerifyOtpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyOtpResponseDescriptor = $convert.base64Decode(
    'ChFWZXJpZnlPdHBSZXNwb25zZRIYCgdpc1ZhbGlkGAEgASgIUgdpc1ZhbGlk');

