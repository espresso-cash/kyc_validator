// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycUserDetailsImpl _$$KycUserDetailsImplFromJson(Map<String, dynamic> json) =>
    _$KycUserDetailsImpl(
      kycInfo: KycInfo.fromJson(json['kycInfo'] as Map<String, dynamic>),
      email: json['email'] as String,
      phone: json['phone'] as String,
      verificationResults: VerificationResults.fromJson(
          json['verificationResults'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KycUserDetailsImplToJson(
        _$KycUserDetailsImpl instance) =>
    <String, dynamic>{
      'kycInfo': instance.kycInfo,
      'email': instance.email,
      'phone': instance.phone,
      'verificationResults': instance.verificationResults,
    };

_$KycInfoImpl _$$KycInfoImplFromJson(Map<String, dynamic> json) =>
    _$KycInfoImpl(
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

Map<String, dynamic> _$$KycInfoImplToJson(_$KycInfoImpl instance) =>
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

_$VerificationResultsImpl _$$VerificationResultsImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationResultsImpl(
      smileId: json['smileId'] as String?,
      emailVerification: json['emailVerification'] as String?,
      phoneVerification: json['phoneVerification'] as String?,
    );

Map<String, dynamic> _$$VerificationResultsImplToJson(
        _$VerificationResultsImpl instance) =>
    <String, dynamic>{
      'smileId': instance.smileId,
      'emailVerification': instance.emailVerification,
      'phoneVerification': instance.phoneVerification,
    };

_$KycUsersImpl _$$KycUsersImplFromJson(Map<String, dynamic> json) =>
    _$KycUsersImpl(
      secretKey: json['secretKey'] as String,
      userPK: json['userPK'] as String,
      partnerToken: json['partnerToken'] as String,
    );

Map<String, dynamic> _$$KycUsersImplToJson(_$KycUsersImpl instance) =>
    <String, dynamic>{
      'secretKey': instance.secretKey,
      'userPK': instance.userPK,
      'partnerToken': instance.partnerToken,
    };
