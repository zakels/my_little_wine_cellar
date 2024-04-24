// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// ignore_for_file: type=lint
class $WinesTable extends Wines with TableInfo<$WinesTable, Wine> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WinesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _wineryMeta = const VerificationMeta('winery');
  @override
  late final GeneratedColumn<String> winery = GeneratedColumn<String>(
      'winery', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _vintageMeta =
      const VerificationMeta('vintage');
  @override
  late final GeneratedColumn<int> vintage = GeneratedColumn<int>(
      'vintage', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<double> rating = GeneratedColumn<double>(
      'rating', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _regionMeta = const VerificationMeta('region');
  @override
  late final GeneratedColumn<String> region = GeneratedColumn<String>(
      'region', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _commentMeta =
      const VerificationMeta('comment');
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
      'comment', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, winery, vintage, rating, region, country, comment, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wines';
  @override
  VerificationContext validateIntegrity(Insertable<Wine> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('winery')) {
      context.handle(_wineryMeta,
          winery.isAcceptableOrUnknown(data['winery']!, _wineryMeta));
    } else if (isInserting) {
      context.missing(_wineryMeta);
    }
    if (data.containsKey('vintage')) {
      context.handle(_vintageMeta,
          vintage.isAcceptableOrUnknown(data['vintage']!, _vintageMeta));
    } else if (isInserting) {
      context.missing(_vintageMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('region')) {
      context.handle(_regionMeta,
          region.isAcceptableOrUnknown(data['region']!, _regionMeta));
    } else if (isInserting) {
      context.missing(_regionMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    } else if (isInserting) {
      context.missing(_commentMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Wine map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Wine(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      winery: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}winery'])!,
      vintage: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vintage'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}rating'])!,
      region: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}region'])!,
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country'])!,
      comment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comment'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $WinesTable createAlias(String alias) {
    return $WinesTable(attachedDatabase, alias);
  }
}

class Wine extends DataClass implements Insertable<Wine> {
  final int id;
  final String name;
  final String winery;
  final int vintage;
  final double rating;
  final String region;
  final String country;
  final String comment;
  final DateTime createdAt;
  const Wine(
      {required this.id,
      required this.name,
      required this.winery,
      required this.vintage,
      required this.rating,
      required this.region,
      required this.country,
      required this.comment,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['winery'] = Variable<String>(winery);
    map['vintage'] = Variable<int>(vintage);
    map['rating'] = Variable<double>(rating);
    map['region'] = Variable<String>(region);
    map['country'] = Variable<String>(country);
    map['comment'] = Variable<String>(comment);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  WinesCompanion toCompanion(bool nullToAbsent) {
    return WinesCompanion(
      id: Value(id),
      name: Value(name),
      winery: Value(winery),
      vintage: Value(vintage),
      rating: Value(rating),
      region: Value(region),
      country: Value(country),
      comment: Value(comment),
      createdAt: Value(createdAt),
    );
  }

  factory Wine.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Wine(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      winery: serializer.fromJson<String>(json['winery']),
      vintage: serializer.fromJson<int>(json['vintage']),
      rating: serializer.fromJson<double>(json['rating']),
      region: serializer.fromJson<String>(json['region']),
      country: serializer.fromJson<String>(json['country']),
      comment: serializer.fromJson<String>(json['comment']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'winery': serializer.toJson<String>(winery),
      'vintage': serializer.toJson<int>(vintage),
      'rating': serializer.toJson<double>(rating),
      'region': serializer.toJson<String>(region),
      'country': serializer.toJson<String>(country),
      'comment': serializer.toJson<String>(comment),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Wine copyWith(
          {int? id,
          String? name,
          String? winery,
          int? vintage,
          double? rating,
          String? region,
          String? country,
          String? comment,
          DateTime? createdAt}) =>
      Wine(
        id: id ?? this.id,
        name: name ?? this.name,
        winery: winery ?? this.winery,
        vintage: vintage ?? this.vintage,
        rating: rating ?? this.rating,
        region: region ?? this.region,
        country: country ?? this.country,
        comment: comment ?? this.comment,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('Wine(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('winery: $winery, ')
          ..write('vintage: $vintage, ')
          ..write('rating: $rating, ')
          ..write('region: $region, ')
          ..write('country: $country, ')
          ..write('comment: $comment, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, winery, vintage, rating, region, country, comment, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Wine &&
          other.id == this.id &&
          other.name == this.name &&
          other.winery == this.winery &&
          other.vintage == this.vintage &&
          other.rating == this.rating &&
          other.region == this.region &&
          other.country == this.country &&
          other.comment == this.comment &&
          other.createdAt == this.createdAt);
}

class WinesCompanion extends UpdateCompanion<Wine> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> winery;
  final Value<int> vintage;
  final Value<double> rating;
  final Value<String> region;
  final Value<String> country;
  final Value<String> comment;
  final Value<DateTime> createdAt;
  const WinesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.winery = const Value.absent(),
    this.vintage = const Value.absent(),
    this.rating = const Value.absent(),
    this.region = const Value.absent(),
    this.country = const Value.absent(),
    this.comment = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  WinesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String winery,
    required int vintage,
    required double rating,
    required String region,
    required String country,
    required String comment,
    this.createdAt = const Value.absent(),
  })  : name = Value(name),
        winery = Value(winery),
        vintage = Value(vintage),
        rating = Value(rating),
        region = Value(region),
        country = Value(country),
        comment = Value(comment);
  static Insertable<Wine> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? winery,
    Expression<int>? vintage,
    Expression<double>? rating,
    Expression<String>? region,
    Expression<String>? country,
    Expression<String>? comment,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (winery != null) 'winery': winery,
      if (vintage != null) 'vintage': vintage,
      if (rating != null) 'rating': rating,
      if (region != null) 'region': region,
      if (country != null) 'country': country,
      if (comment != null) 'comment': comment,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  WinesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? winery,
      Value<int>? vintage,
      Value<double>? rating,
      Value<String>? region,
      Value<String>? country,
      Value<String>? comment,
      Value<DateTime>? createdAt}) {
    return WinesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      winery: winery ?? this.winery,
      vintage: vintage ?? this.vintage,
      rating: rating ?? this.rating,
      region: region ?? this.region,
      country: country ?? this.country,
      comment: comment ?? this.comment,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (winery.present) {
      map['winery'] = Variable<String>(winery.value);
    }
    if (vintage.present) {
      map['vintage'] = Variable<int>(vintage.value);
    }
    if (rating.present) {
      map['rating'] = Variable<double>(rating.value);
    }
    if (region.present) {
      map['region'] = Variable<String>(region.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WinesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('winery: $winery, ')
          ..write('vintage: $vintage, ')
          ..write('rating: $rating, ')
          ..write('region: $region, ')
          ..write('country: $country, ')
          ..write('comment: $comment, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDB extends GeneratedDatabase {
  _$LocalDB(QueryExecutor e) : super(e);
  late final $WinesTable wines = $WinesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [wines];
}
