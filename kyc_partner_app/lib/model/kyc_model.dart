// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';

part 'kyc_model.freezed.dart';
part 'kyc_model.g.dart';

@freezed
class KycUserDetails with _$KycUserDetails {
  const factory KycUserDetails({
    required KycInfo kycInfo,
    required String email,
    required String phone,
    required VerificationResults verificationResults,
  }) = _KycUserDetails;

  factory KycUserDetails.fromJson(Map<String, dynamic> json) =>
      _$KycUserDetailsFromJson(json);
}

@freezed
class KycInfo with _$KycInfo {
  factory KycInfo({
    String? userId,
    String? jobId,
    required String firstName,
    required String middleName,
    required String lastName,
    required String dob,
    required String countryCode,
    required String idType,
    required String idNumber,
    String? selfie,
  }) = _KycInfo;

  factory KycInfo.fromJson(Map<String, dynamic> json) =>
      _$KycInfoFromJson(json);

  factory KycInfo.fromDataInfoKeys(Map<String, String> map) {
    return KycInfo(
      jobId: map[DataInfoKeys.jobId.value],
      firstName: map[DataInfoKeys.firstName.value] ?? '',
      middleName: map[DataInfoKeys.middleName.value] ?? '',
      lastName: map[DataInfoKeys.lastName.value] ?? '',
      dob: map[DataInfoKeys.dateOfBirth.value] ?? '',
      countryCode: map[DataInfoKeys.countryCode.value] ?? '',
      idType: map[DataInfoKeys.idType.value] ?? '',
      idNumber: map[DataInfoKeys.idNumber.value] ?? '',
    );
  }
}

@freezed
class VerificationResults with _$VerificationResults {
  const factory VerificationResults({
    String? smileId,
    String? emailVerification,
    String? phoneVerification,
  }) = _VerificationResults;

  factory VerificationResults.fromJson(Map<String, dynamic> json) =>
      _$VerificationResultsFromJson(json);
}

@freezed
class KycUsers with _$KycUsers {
  const factory KycUsers({
    required String secretKey,
    required String userPK,
    required String partnerToken,
  }) = _KycUsers;

  factory KycUsers.fromJson(Map<String, dynamic> json) =>
      _$KycUsersFromJson(json);
}
