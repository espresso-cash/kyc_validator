import 'package:grpc/grpc.dart';
import 'package:kyc_app_client/kyc_app_client.dart';
import 'package:kyc_app_server/src/features/user/data/user_repository.dart';

import '../../../di.dart';

class UserEndpoint extends UserServiceBase {
  @override
  Future<FetchPartnerUsersResponse> fetchUserData(
      ServiceCall call, FetchPartnerUsersRequest request) async {
    final users =
        await sl<UserRepository>().getUsersForPartner(request.partnerPk);

    return FetchPartnerUsersResponse(
      users: users
          .map((user) => User(
                userPk: user.userPk,
                partnerToken: user.partnerToken,
                secretKey: user.secretKey,
              ))
          .toList(),
    );
  }

  @override
  Future<SendUserDataResponse> sendUserData(
      ServiceCall call, SendUserDataRequest request) async {
    await sl<UserRepository>().saveUser(
      userPK: request.user.userPk,
      partnerToken: request.user.partnerToken,
      secretKey: request.user.secretKey,
      partnerPk: request.partnerPk,
    );

    return SendUserDataResponse(success: true);
  }
}
