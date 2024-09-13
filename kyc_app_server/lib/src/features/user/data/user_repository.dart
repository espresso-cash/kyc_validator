import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app_server/src/db/db.dart';

@injectable
class UserRepository {
  const UserRepository(this._db);

  final AppDatabase _db;

  Future<void> saveUser({
    required String userPK,
    required String secretKey,
    required String partnerPk,
  }) async {
    final userCompanion = ValidatedUsersCompanion(
      userPk: Value(userPK),
      secretKey: Value(secretKey),
      partnerPk: Value(partnerPk),
    );

    await _db.validatedUsers.insertOnConflictUpdate(userCompanion);
  }

  Future<void> deleteUser({
    required String userPK,
    required String partnerPk,
  }) async {
    await (_db.validatedUsers.delete()
          ..where((tbl) =>
              tbl.userPk.equals(userPK) & tbl.partnerPk.equals(partnerPk)))
        .go();
  }

  Future<List<ValidatedUser>> getUsersForPartner(String partnerPk) async {
    return await (_db.select(_db.validatedUsers)
          ..where((tbl) => tbl.partnerPk.equals(partnerPk)))
        .get();
  }
}
