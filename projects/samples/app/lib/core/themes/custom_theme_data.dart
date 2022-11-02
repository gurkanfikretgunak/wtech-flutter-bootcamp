import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() {
    return ThemeData(
        primarySwatch: Colors.pink,
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.purple,
          elevation: 2,
          shape: CircularNotchedRectangle(),
        ));
  }
}
