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
    required String secretKey,
    required String userAuthPK,
    required String userPublicKey,
  }) async {
    final user = await _kycClient.fetchUserInfo(
      secretKey: secretKey,
      userPK: userAuthPK,
    );

    final jobId = Uuid().v4();

    await _sendToSmile(
      jobId: jobId,
      userId: userPublicKey,
      user: user,
    );

    await Future.delayed(Duration(seconds: 10));

    final results = await _smileApiClient.status(JobStatusRequestDto(
      jobId: jobId,
      userId: userPublicKey,
    ));

    await _kycClient.setValidationResult(
      message: jsonEncode(results),
      userPK: userAuthPK,
      secretKey: secretKey,
    );
  }

  Future<bool> _sendToSmile({
    required KycUserInfo? user,
    required String userId,
    required String jobId,
  }) async {
    try {
      final dob =
          DateFormat('dd/MM/yyyy').format(DateTime.parse(user?.dob ?? ''));

      final rawSelfie = user?.photoSelfie ?? Uint8List(0);

      final photo = await modifyImage(rawSelfie);

      final response = await _smileApiClient.requestUpload(
        UploadRequestDto(
          callbackUrl: smileWebhookUrl,
          partnerParams: {
            'user_id': userId,
            'job_id': jobId,
            'job_type': '1',
            // Info below is for mocking
            'FullName':
                '${user?.firstName} ${user?.middleName}  ${user?.lastName}',
            'DOB': dob,
            'Photo': base64Encode(rawSelfie),
          },
        ),
      );

      final upload = response.uploadUrl;

      final data = InfoData(
        idInfo: IdInfo(
          dob: dob,
          country: user?.countryCode ?? '',
          entered: true,
          idType: user?.idType ?? '',
          idNumber: user?.idNumber ?? '',
          firstName: user?.firstName ?? '',
          middleName: user?.middleName ?? '',
          lastName: user?.lastName ?? '',
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

Future<String> modifyImage(Uint8List? imageData) async {
  if (imageData == null) {
    return '';
  }

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
