// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:kyc_app_server/di.dart' as _i648;
import 'package:kyc_app_server/src/db/db.dart' as _i679;
import 'package:kyc_app_server/src/features/otp/data/otp_repository.dart'
    as _i853;
import 'package:kyc_app_server/src/features/otp/service/otp_service.dart'
    as _i739;
import 'package:kyc_app_server/src/features/smile/client.dart' as _i91;
import 'package:kyc_app_server/src/features/twilio/client.dart' as _i245;
import 'package:kyc_app_server/src/features/user/data/user_repository.dart'
    as _i142;
import 'package:kyc_app_server/src/features/validator/service/kyc_client.dart'
    as _i427;
import 'package:kyc_app_server/src/features/validator/service/validator_service.dart'
    as _i448;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i91.SmileApiClient>(() => _i91.SmileApiClient());
    gh.factory<_i245.TwilioApiClient>(() => _i245.TwilioApiClient());
    await gh.singletonAsync<_i427.PartnerKycService>(
      () {
        final i = _i427.PartnerKycService();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i679.AppDatabase>(
      () => appModule.db(),
      preResolve: true,
    );
    gh.singleton<_i448.ValidatorService>(() => _i448.ValidatorService(
          gh<_i91.SmileApiClient>(),
          gh<_i427.PartnerKycService>(),
        ));
    gh.factory<_i853.OtpRepository>(
        () => _i853.OtpRepository(gh<_i679.AppDatabase>()));
    gh.factory<_i142.UserRepository>(
        () => _i142.UserRepository(gh<_i679.AppDatabase>()));
    gh.singleton<_i739.OtpService>(() => _i739.OtpService(
          gh<_i245.TwilioApiClient>(),
          gh<_i427.PartnerKycService>(),
          gh<_i853.OtpRepository>(),
        ));
    return this;
  }
}

class _$AppModule extends _i648.AppModule {}
