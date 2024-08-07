import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:kyc_app_server/config.dart';
import 'package:kyc_app_server/src/features/smile/client.dart';
import 'package:kyc_app_server/src/features/smile/model.dart';
import 'package:kyc_app_server/src/features/validator/models/kyc_model.dart';
import 'package:kyc_app_server/src/features/validator/service/kyc_client.dart';
import 'package:uuid/uuid.dart';
import 'dart:typed_data';

import 'dart:convert';

import 'package:image/image.dart' as img;

@singleton
class ValidatorService {
  ValidatorService(this._smileApiClient, this._kycClient);

  final SmileApiClient _smileApiClient;
  final PartnerKycService _kycClient;

  Future<void> call({
    required String partnerToken,
    required String secretKey,
    required String userAuthPK,
    required String userPublicKey,
  }) async {
    await _kycClient.generateAuthToken(partnerToken, secretKey);

    final user = await _kycClient.fetchDataForSmile(
      secretKey: secretKey,
      userPK: userAuthPK,
    );

    final jobId = Uuid().v4();

    await _sendToSmile(
      jobId: jobId,
      user: user.copyWith(userId: userPublicKey),
    );

    await Future.delayed(Duration(seconds: 10));

    final results = await _smileApiClient.status(JobStatusRequestDto(
      jobId: jobId,
      userId: userPublicKey,
    ));

    await _kycClient.setValidationResult(jsonEncode(results));
  }

  Future<bool> _sendToSmile({
    required KycUserInfo user,
    required String jobId,
  }) async {
    try {
      final dob = DateFormat('dd/MM/yyyy').format(DateTime.parse(user.dob));

      final photo = await modifyImage(user.selfie!);

      final response = await _smileApiClient.requestUpload(
        UploadRequestDto(
          callbackUrl: smileWebhookUrl,
          partnerParams: {
            'user_id': user.userId,
            'job_id': jobId,
            'job_type': '1',
            // Info below is for mocking
            'FullName':
                '${user.firstName} ${user.middleName}  ${user.lastName}',
            'DOB': dob,
            // 'Photo': user.selfie!,
          },
        ),
      );

      final upload = response.uploadUrl;

      final data = InfoData(
        idInfo: IdInfo(
          dob: dob,
          country: user.countryCode,
          entered: true,
          idType: user.idType,
          idNumber: user.idNumber,
          firstName: user.firstName,
          middleName: user.middleName,
          lastName: user.lastName,
        ),
        images: [
          ImageDto(
            imageTypeId: 2,
            image: photo,
          ),
        ],
      );

      await upload.upload(await data.toZip());

      return true;
    } catch (ex) {
      print(ex);
      throw Exception('Failed to upload');
    }
  }
}

Future<String> modifyImage(String image) async {
  Uint8List imageData = base64Decode(image);

  img.Image? file = img.decodeImage(imageData);

  if (file == null) {
    throw Exception('Failed to decode image');
  }

  final newImg = img.drawString(
    file,
    'dummy-text',
    font: img.arial24,
    x: 10,
    y: 10,
  );

  Uint8List modifiedImageData = Uint8List.fromList(img.encodePng(newImg));

  return base64Encode(modifiedImageData);
}
