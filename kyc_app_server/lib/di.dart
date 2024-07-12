import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/di.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
  throwOnMissingDependencies: true,
)
Future<void> configureDependencies() => sl.init();
