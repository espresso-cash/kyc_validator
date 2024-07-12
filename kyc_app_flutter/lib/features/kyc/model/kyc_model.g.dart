// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycUserInfoImpl _$$KycUserInfoImplFromJson(Map<String, dynamic> json) =>
    _$KycUserInfoImpl(
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String,
      lastName: json['lastName'] as String,
      dob: json['dob'] as String,
      countryCode: json['countryCode'] as String,
      idType: json['idType'] as String,
      idNumber: json['idNumber'] as String,
    );

Map<String, dynamic> _$$KycUserInfoImplToJson(_$KycUserInfoImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'dob': instance.dob,
      'countryCode': instance.countryCode,
      'idType': instance.idType,
      'idNumber': instance.idNumber,
    };
