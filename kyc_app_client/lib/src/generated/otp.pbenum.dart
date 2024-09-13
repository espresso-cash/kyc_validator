//
//  Generated code. Do not modify.
//  source: otp.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class OtpType extends $pb.ProtobufEnum {
  static const OtpType unsupported = OtpType._(0, _omitEnumNames ? '' : 'unsupported');
  static const OtpType email = OtpType._(1, _omitEnumNames ? '' : 'email');
  static const OtpType phone = OtpType._(2, _omitEnumNames ? '' : 'phone');

  static const $core.List<OtpType> values = <OtpType> [
    unsupported,
    email,
    phone,
  ];

  static final $core.Map<$core.int, OtpType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OtpType? valueOf($core.int value) => _byValue[value];

  const OtpType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
