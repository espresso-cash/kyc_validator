// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycUserInfoImpl _$$KycUserInfoImplFromJson(Map<String, dynamic> json) =>
    _$KycUserInfoImpl(
      userId: json['userId'] as String?,
      jobId: json['jobId'] as String?,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String,
      lastName: json['lastName'] as String,
      dob: json['dob'] as String,
      countryCode: json['countryCode'] as String,
      idType: json['idType'] as String,
      idNumber: json['idNumber'] as String,
      selfie: json['selfie'] as String?,
    );

Map<String, dynamic> _$$KycUserInfoImplToJson(_$KycUserInfoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'jobId': instance.jobId,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'dob': instance.dob,
      'countryCode': instance.countryCode,
      'idType': instance.idType,
      'idNumber': instance.idNumber,
      'selfie': instance.selfie,
    };
