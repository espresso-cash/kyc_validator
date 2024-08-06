//
//  Generated code. Do not modify.
//  source: partner.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDataDescriptor instead')
const UserData$json = {
  '1': 'UserData',
  '2': [
    {'1': 'secretKey', '3': 1, '4': 1, '5': 9, '10': 'secretKey'},
    {'1': 'partnerToken', '3': 2, '4': 1, '5': 9, '10': 'partnerToken'},
    {'1': 'userPk', '3': 3, '4': 1, '5': 9, '10': 'userPk'},
  ],
};

/// Descriptor for `UserData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDataDescriptor = $convert.base64Decode(
    'CghVc2VyRGF0YRIcCglzZWNyZXRLZXkYASABKAlSCXNlY3JldEtleRIiCgxwYXJ0bmVyVG9rZW'
    '4YAiABKAlSDHBhcnRuZXJUb2tlbhIWCgZ1c2VyUGsYAyABKAlSBnVzZXJQaw==');

@$core.Deprecated('Use sendDataRequestDescriptor instead')
const SendDataRequest$json = {
  '1': 'SendDataRequest',
  '2': [
    {'1': 'userData', '3': 1, '4': 1, '5': 11, '6': '.kyc.UserData', '10': 'userData'},
    {'1': 'partnerPk', '3': 2, '4': 1, '5': 9, '10': 'partnerPk'},
  ],
};

/// Descriptor for `SendDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDataRequestDescriptor = $convert.base64Decode(
    'Cg9TZW5kRGF0YVJlcXVlc3QSKQoIdXNlckRhdGEYASABKAsyDS5reWMuVXNlckRhdGFSCHVzZX'
    'JEYXRhEhwKCXBhcnRuZXJQaxgCIAEoCVIJcGFydG5lclBr');

@$core.Deprecated('Use sendDataResponseDescriptor instead')
const SendDataResponse$json = {
  '1': 'SendDataResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `SendDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDataResponseDescriptor = $convert.base64Decode(
    'ChBTZW5kRGF0YVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use fetchUserRequestDescriptor instead')
const FetchUserRequest$json = {
  '1': 'FetchUserRequest',
  '2': [
    {'1': 'partnerPk', '3': 1, '4': 1, '5': 9, '10': 'partnerPk'},
  ],
};

/// Descriptor for `FetchUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchUserRequestDescriptor = $convert.base64Decode(
    'ChBGZXRjaFVzZXJSZXF1ZXN0EhwKCXBhcnRuZXJQaxgBIAEoCVIJcGFydG5lclBr');

@$core.Deprecated('Use fetchUserResponseDescriptor instead')
const FetchUserResponse$json = {
  '1': 'FetchUserResponse',
  '2': [
    {'1': 'userData', '3': 1, '4': 3, '5': 11, '6': '.kyc.UserData', '10': 'userData'},
  ],
};

/// Descriptor for `FetchUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchUserResponseDescriptor = $convert.base64Decode(
    'ChFGZXRjaFVzZXJSZXNwb25zZRIpCgh1c2VyRGF0YRgBIAMoCzINLmt5Yy5Vc2VyRGF0YVIIdX'
    'NlckRhdGE=');

