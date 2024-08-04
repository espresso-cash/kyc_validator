import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/di.config.dart';

import 'src/db/db.dart';

final sl = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
  throwOnMissingDependencies: true,
)
Future<void> configureDependencies() => sl.init();

@module
abstract class AppModule {
  const AppModule();

  @lazySingleton
  @preResolve
  Future<AppDatabase> db() async {
    final db = AppDatabase();
    await db.executor.ensureOpen(db);

    return db;
  }
}
