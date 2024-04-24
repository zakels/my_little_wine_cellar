import 'dart:io';

import 'package:my_little_wine_cellar/model/wine.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'drift_db.g.dart';

@DriftDatabase(
  tables: [
    Wines,
  ]
)

class LocalDB extends _$LocalDB{
  LocalDB() : super(_openConnection());

  // insert
  Future<int> createWine(WinesCompanion data) =>
      into(wines).insert(data);

  // update
  Future<int> updateWineById(int id, WinesCompanion data) =>
      (update(wines)..where((tbl) => tbl.id.equals(id))).write(data);

  // remove
  Future<int> removeWine(int id) =>
      (delete(wines)..where((tbl) => tbl.id.equals(id))).go();

  // select all
  Future<List<Wine>> getWines() =>
      select(wines).get();

  // select single
  Future<Wine> getWineById(int id) =>
      (select(wines)..where((tbl) => tbl.id.equals(id))).getSingle();

  Stream<List<Wine>> watchAllWines(){
    return select(wines).watch();
  }

  Stream<List<Wine>> watchWines(DateTime date){
    // final query = select(schedules).join([
    //   innerJoin(categoryColors, categoryColors.id.equalsExp(schedules.colorId))
    // ]);
    //
    // query.where(schedules.date.equals(date));
    //
    // query.orderBy(
    //     [
    //       OrderingTerm.asc(schedules.startTime),
    //     ]
    // );
    //
    // return query.watch().map(
    //       (rows) => rows.map(
    //           (row) => ScheduleWithColor(
    //         schedule: row.readTable(schedules),
    //         categoryColor: row.readTable(categoryColors),
    //       )
    //   ).toList(),
    // );

    return (select(wines)..where((tbl)=> tbl.createdAt.equals(date))).watch();
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection()
{
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}