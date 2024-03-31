import 'package:flutter/material.dart';
import 'package:my_little_wine_cellar/screen/home_screen.dart';

void main() {
  // db load

  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      home: SafeArea(child: HomeScreen()),
    )
  );
}
