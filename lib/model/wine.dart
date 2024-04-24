import 'package:drift/drift.dart';

class Wines extends Table {
  // p.key
  IntColumn get id => integer().autoIncrement()();

  // wine name
  TextColumn get name => text()();

  // winery
  TextColumn get winery => text()();

  // wine vintage
  IntColumn get vintage => integer()();

  // wine rating
  RealColumn get rating => real()();

  // city
  TextColumn get region => text()();

  // country
  TextColumn get country => text()();

  // comment
  TextColumn get comment => text()();

  // registered date
  DateTimeColumn get createdAt => dateTime().clientDefault(
        () => DateTime.now(),
  )();
}