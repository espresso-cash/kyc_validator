//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'secretKey', '3': 1, '4': 1, '5': 9, '10': 'secretKey'},
    {'1': 'partnerToken', '3': 2, '4': 1, '5': 9, '10': 'partnerToken'},
    {'1': 'userPk', '3': 3, '4': 1, '5': 9, '10': 'userPk'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhwKCXNlY3JldEtleRgBIAEoCVIJc2VjcmV0S2V5EiIKDHBhcnRuZXJUb2tlbhgCIA'
    'EoCVIMcGFydG5lclRva2VuEhYKBnVzZXJQaxgDIAEoCVIGdXNlclBr');

@$core.Deprecated('Use sendUserDataRequestDescriptor instead')
const SendUserDataRequest$json = {
  '1': 'SendUserDataRequest',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.validator.User', '10': 'user'},
    {'1': 'partnerPk', '3': 2, '4': 1, '5': 9, '10': 'partnerPk'},
  ],
};

/// Descriptor for `SendUserDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendUserDataRequestDescriptor = $convert.base64Decode(
    'ChNTZW5kVXNlckRhdGFSZXF1ZXN0EiMKBHVzZXIYASABKAsyDy52YWxpZGF0b3IuVXNlclIEdX'
    'NlchIcCglwYXJ0bmVyUGsYAiABKAlSCXBhcnRuZXJQaw==');

@$core.Deprecated('Use sendUserDataResponseDescriptor instead')
const SendUserDataResponse$json = {
  '1': 'SendUserDataResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `SendUserDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendUserDataResponseDescriptor = $convert.base64Decode(
    'ChRTZW5kVXNlckRhdGFSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use fetchPartnerUsersRequestDescriptor instead')
const FetchPartnerUsersRequest$json = {
  '1': 'FetchPartnerUsersRequest',
  '2': [
    {'1': 'partnerPk', '3': 1, '4': 1, '5': 9, '10': 'partnerPk'},
  ],
};

/// Descriptor for `FetchPartnerUsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchPartnerUsersRequestDescriptor = $convert.base64Decode(
    'ChhGZXRjaFBhcnRuZXJVc2Vyc1JlcXVlc3QSHAoJcGFydG5lclBrGAEgASgJUglwYXJ0bmVyUG'
    's=');

@$core.Deprecated('Use fetchPartnerUsersResponseDescriptor instead')
const FetchPartnerUsersResponse$json = {
  '1': 'FetchPartnerUsersResponse',
  '2': [
    {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.validator.User', '10': 'users'},
  ],
};

/// Descriptor for `FetchPartnerUsersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchPartnerUsersResponseDescriptor = $convert.base64Decode(
    'ChlGZXRjaFBhcnRuZXJVc2Vyc1Jlc3BvbnNlEiUKBXVzZXJzGAEgAygLMg8udmFsaWRhdG9yLl'
    'VzZXJSBXVzZXJz');

