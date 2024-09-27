// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $OtpRecordsTable extends OtpRecords
    with TableInfo<$OtpRecordsTable, OtpRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OtpRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userPkMeta = const VerificationMeta('userPk');
  @override
  late final GeneratedColumn<String> userPk = GeneratedColumn<String>(
      'user_pk', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _otpMeta = const VerificationMeta('otp');
  @override
  late final GeneratedColumn<String> otp = GeneratedColumn<String>(
      'otp', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expiryMeta = const VerificationMeta('expiry');
  @override
  late final GeneratedColumn<PgDateTime> expiry = GeneratedColumn<PgDateTime>(
      'expiry', aliasedName, false,
      type: PgTypes.timestampNoTimezone, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<OtpType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<OtpType>($OtpRecordsTable.$convertertype);
  @override
  List<GeneratedColumn> get $columns => [userPk, otp, expiry, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'otp_records';
  @override
  VerificationContext validateIntegrity(Insertable<OtpRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_pk')) {
      context.handle(_userPkMeta,
          userPk.isAcceptableOrUnknown(data['user_pk']!, _userPkMeta));
    } else if (isInserting) {
      context.missing(_userPkMeta);
    }
    if (data.containsKey('otp')) {
      context.handle(
          _otpMeta, otp.isAcceptableOrUnknown(data['otp']!, _otpMeta));
    } else if (isInserting) {
      context.missing(_otpMeta);
    }
    if (data.containsKey('expiry')) {
      context.handle(_expiryMeta,
          expiry.isAcceptableOrUnknown(data['expiry']!, _expiryMeta));
    } else if (isInserting) {
      context.missing(_expiryMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userPk, type};
  @override
  OtpRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OtpRecord(
      userPk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_pk'])!,
      otp: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}otp'])!,
      expiry: attachedDatabase.typeMapping
          .read(PgTypes.timestampNoTimezone, data['${effectivePrefix}expiry'])!,
      type: $OtpRecordsTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
    );
  }

  @override
  $OtpRecordsTable createAlias(String alias) {
    return $OtpRecordsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<OtpType, String, String> $convertertype =
      const EnumNameConverter<OtpType>(OtpType.values);
}

class OtpRecord extends DataClass implements Insertable<OtpRecord> {
  final String userPk;
  final String otp;
  final PgDateTime expiry;
  final OtpType type;
  const OtpRecord(
      {required this.userPk,
      required this.otp,
      required this.expiry,
      required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_pk'] = Variable<String>(userPk);
    map['otp'] = Variable<String>(otp);
    map['expiry'] = Variable<PgDateTime>(expiry, PgTypes.timestampNoTimezone);
    {
      map['type'] =
          Variable<String>($OtpRecordsTable.$convertertype.toSql(type));
    }
    return map;
  }

  OtpRecordsCompanion toCompanion(bool nullToAbsent) {
    return OtpRecordsCompanion(
      userPk: Value(userPk),
      otp: Value(otp),
      expiry: Value(expiry),
      type: Value(type),
    );
  }

  factory OtpRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OtpRecord(
      userPk: serializer.fromJson<String>(json['userPk']),
      otp: serializer.fromJson<String>(json['otp']),
      expiry: serializer.fromJson<PgDateTime>(json['expiry']),
      type: $OtpRecordsTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userPk': serializer.toJson<String>(userPk),
      'otp': serializer.toJson<String>(otp),
      'expiry': serializer.toJson<PgDateTime>(expiry),
      'type': serializer
          .toJson<String>($OtpRecordsTable.$convertertype.toJson(type)),
    };
  }

  OtpRecord copyWith(
          {String? userPk, String? otp, PgDateTime? expiry, OtpType? type}) =>
      OtpRecord(
        userPk: userPk ?? this.userPk,
        otp: otp ?? this.otp,
        expiry: expiry ?? this.expiry,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('OtpRecord(')
          ..write('userPk: $userPk, ')
          ..write('otp: $otp, ')
          ..write('expiry: $expiry, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userPk, otp, expiry, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OtpRecord &&
          other.userPk == this.userPk &&
          other.otp == this.otp &&
          other.expiry == this.expiry &&
          other.type == this.type);
}

class OtpRecordsCompanion extends UpdateCompanion<OtpRecord> {
  final Value<String> userPk;
  final Value<String> otp;
  final Value<PgDateTime> expiry;
  final Value<OtpType> type;
  final Value<int> rowid;
  const OtpRecordsCompanion({
    this.userPk = const Value.absent(),
    this.otp = const Value.absent(),
    this.expiry = const Value.absent(),
    this.type = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OtpRecordsCompanion.insert({
    required String userPk,
    required String otp,
    required PgDateTime expiry,
    required OtpType type,
    this.rowid = const Value.absent(),
  })  : userPk = Value(userPk),
        otp = Value(otp),
        expiry = Value(expiry),
        type = Value(type);
  static Insertable<OtpRecord> custom({
    Expression<String>? userPk,
    Expression<String>? otp,
    Expression<PgDateTime>? expiry,
    Expression<String>? type,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userPk != null) 'user_pk': userPk,
      if (otp != null) 'otp': otp,
      if (expiry != null) 'expiry': expiry,
      if (type != null) 'type': type,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OtpRecordsCompanion copyWith(
      {Value<String>? userPk,
      Value<String>? otp,
      Value<PgDateTime>? expiry,
      Value<OtpType>? type,
      Value<int>? rowid}) {
    return OtpRecordsCompanion(
      userPk: userPk ?? this.userPk,
      otp: otp ?? this.otp,
      expiry: expiry ?? this.expiry,
      type: type ?? this.type,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userPk.present) {
      map['user_pk'] = Variable<String>(userPk.value);
    }
    if (otp.present) {
      map['otp'] = Variable<String>(otp.value);
    }
    if (expiry.present) {
      map['expiry'] =
          Variable<PgDateTime>(expiry.value, PgTypes.timestampNoTimezone);
    }
    if (type.present) {
      map['type'] =
          Variable<String>($OtpRecordsTable.$convertertype.toSql(type.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OtpRecordsCompanion(')
          ..write('userPk: $userPk, ')
          ..write('otp: $otp, ')
          ..write('expiry: $expiry, ')
          ..write('type: $type, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $OtpRecordsTable otpRecords = $OtpRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [otpRecords];
}
