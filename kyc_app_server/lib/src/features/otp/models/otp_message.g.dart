// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpMessageImpl _$$OtpMessageImplFromJson(Map<String, dynamic> json) =>
    _$OtpMessageImpl(
      identifier: $enumDecode(_$DataInfoKeysEnumMap, json['identifier']),
      otp: json['otp'] as String,
      expiry: DateTime.parse(json['expiry'] as String),
    );

Map<String, dynamic> _$$OtpMessageImplToJson(_$OtpMessageImpl instance) =>
    <String, dynamic>{
      'identifier': _$DataInfoKeysEnumMap[instance.identifier]!,
      'otp': instance.otp,
      'expiry': instance.expiry.toIso8601String(),
    };

const _$DataInfoKeysEnumMap = {
  DataInfoKeys.unspecified: 'unspecified',
  DataInfoKeys.email: 'email',
  DataInfoKeys.phone: 'phone',
  DataInfoKeys.jobId: 'jobId',
  DataInfoKeys.firstName: 'firstName',
  DataInfoKeys.middleName: 'middleName',
  DataInfoKeys.lastName: 'lastName',
  DataInfoKeys.dateOfBirth: 'dateOfBirth',
  DataInfoKeys.countryCode: 'countryCode',
  DataInfoKeys.idType: 'idType',
  DataInfoKeys.idNumber: 'idNumber',
};
