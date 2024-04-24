import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:drift/drift.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:my_little_wine_cellar/screen/main_screen.dart';
import '../db/drift_db.dart';

void main() async {
  // db load
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  final db = LocalDB();

  GetIt.I.registerSingleton<LocalDB>(db);

  final data = await db.getWines();

  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      home: SafeArea(child: MainScreen()),
    )
  );
}
