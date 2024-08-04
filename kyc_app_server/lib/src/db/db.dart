import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:postgres/postgres.dart';

part 'db.g.dart';

class OtpRecords extends Table {
  const OtpRecords();

  TextColumn get userPk => text()();
  TextColumn get otp => text()();
  TimestampColumn get expiry => customType(PgTypes.timestampNoTimezone)();
  TextColumn get type => textEnum<DataInfoKeys>()();

  @override
  Set<Column> get primaryKey => {userPk, type};
}

@DriftDatabase(
  tables: [OtpRecords],
)
class AppDatabase extends _$AppDatabase {
  factory AppDatabase() {
    final pgDatabase = PgDatabase.opened(
      Pool<void>.withEndpoints(
        [
          Endpoint(
            host: dbHost,
            database: 'app',
            username: 'postgres',
            password: dbPassword,
            isUnixSocket: dbHost.startsWith('/cloudsql/'),
          ),
        ],
        settings: const PoolSettings(
          sslMode: SslMode.disable,
          maxConnectionAge: Duration(minutes: 5),
          maxSessionUse: Duration(minutes: 5),
        ),
      ),
      enableMigrations: false,
    );

    return AppDatabase._(pgDatabase);
  }

  AppDatabase._(super.e);

  @override
  int get schemaVersion => 6;
}

final dbHost = Platform.environment['DB_HOST'] ?? '';
final dbPassword = Platform.environment['DB_PASSWORD'] ?? '';
