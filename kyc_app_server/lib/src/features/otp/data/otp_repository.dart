import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/src/db/db.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';

@injectable
class OtpRepository {
  const OtpRepository(this._db);

  final AppDatabase _db;

  Future<OtpRecord?> getOtpRecord({
    required String userPK,
    required String type,
  }) async {
    return await (_db.select(_db.otpRecords)
          ..where((tbl) => tbl.userPk.equals(userPK) & tbl.type.equals(type)))
        .getSingleOrNull();
  }

  Future<void> createOtpRecord({
    required String userPK,
    required String otp,
    required DataInfoKeys type,
  }) async {
    final otpCompanion = OtpRecordsCompanion(
      userPk: Value(userPK),
      otp: Value(otp),
      expiry: Value(PgDateTime(DateTime.now().add(const Duration(minutes: 5)))),
      type: Value(type),
    );

    await _db.otpRecords.insertOnConflictUpdate(otpCompanion);
  }

  Future<void> deleteOtpRecord({
    required String userPK,
    required String type,
  }) async {
    await (_db.delete(_db.otpRecords)
          ..where((tbl) => tbl.userPk.equals(userPK) & tbl.type.equals(type)))
        .go();
  }
}
