//
//  Generated code. Do not modify.
//  source: kyc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use kycRequestDescriptor instead')
const KycRequest$json = {
  '1': 'KycRequest',
  '2': [
    {'1': 'secretKey', '3': 1, '4': 1, '5': 9, '10': 'secretKey'},
    {'1': 'userAuthPk', '3': 2, '4': 1, '5': 9, '10': 'userAuthPk'},
    {'1': 'userPublicKey', '3': 3, '4': 1, '5': 9, '10': 'userPublicKey'},
  ],
};

/// Descriptor for `KycRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kycRequestDescriptor = $convert.base64Decode(
    'CgpLeWNSZXF1ZXN0EhwKCXNlY3JldEtleRgBIAEoCVIJc2VjcmV0S2V5Eh4KCnVzZXJBdXRoUG'
    'sYAiABKAlSCnVzZXJBdXRoUGsSJAoNdXNlclB1YmxpY0tleRgDIAEoCVINdXNlclB1YmxpY0tl'
    'eQ==');

@$core.Deprecated('Use kycResponseDescriptor instead')
const KycResponse$json = {
  '1': 'KycResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `KycResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kycResponseDescriptor = $convert.base64Decode(
    'CgtLeWNSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

