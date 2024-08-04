import 'package:grpc/grpc.dart';
import 'package:kyc_app_client/kyc_app_client.dart';
import 'package:kyc_app_server/di.dart';

import 'package:kyc_app_server/src/features/validator/service/validator_service.dart';

class KycEndpoint extends KycServiceBase {
  @override
  Future<KycResponse> requestKyc(ServiceCall call, KycRequest request) async {
    final service = sl<ValidatorService>();

    await service.call(
      partnerToken: request.partnerToken,
      secretKey: request.secretKey,
      userAuthPK: request.userAuthPk,
      userPublicKey: request.userPublicKey,
    );

    return KycResponse(success: true);
  }
}
