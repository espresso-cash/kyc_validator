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
    {'1': 'userPk', '3': 2, '4': 1, '5': 9, '10': 'userPk'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhwKCXNlY3JldEtleRgBIAEoCVIJc2VjcmV0S2V5EhYKBnVzZXJQaxgCIAEoCVIGdX'
    'NlclBr');

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

@$core.Deprecated('Use deleteUserDataRequestDescriptor instead')
const DeleteUserDataRequest$json = {
  '1': 'DeleteUserDataRequest',
  '2': [
    {'1': 'userPk', '3': 1, '4': 1, '5': 9, '10': 'userPk'},
    {'1': 'partnerPk', '3': 2, '4': 1, '5': 9, '10': 'partnerPk'},
  ],
};

/// Descriptor for `DeleteUserDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserDataRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVVc2VyRGF0YVJlcXVlc3QSFgoGdXNlclBrGAEgASgJUgZ1c2VyUGsSHAoJcGFydG'
    '5lclBrGAIgASgJUglwYXJ0bmVyUGs=');

@$core.Deprecated('Use commonResponseDescriptor instead')
const CommonResponse$json = {
  '1': 'CommonResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CommonResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonResponseDescriptor = $convert.base64Decode(
    'Cg5Db21tb25SZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

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

