import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/src/db/db.dart';

@injectable
class PartnerRepository {
  const PartnerRepository(this._db);

  final AppDatabase _db;

  Future<void> saveUser({
    required String userPK,
    required String partnerToken,
    required String secretKey,
    required String partnerPk,
  }) async {
    final userCompanion = ValidatedUsersCompanion(
      userPk: Value(userPK),
      partnerToken: Value(partnerToken),
      secretKey: Value(secretKey),
      partnerPk: Value(partnerPk),
    );

    await _db.validatedUsers.insertOnConflictUpdate(userCompanion);
  }

  Future<List<ValidatedUser>> getUsersForPartner(String partnerPk) async {
    return await (_db.select(_db.validatedUsers)
          ..where((tbl) => tbl.partnerPk.equals(partnerPk)))
        .get();
  }
}
