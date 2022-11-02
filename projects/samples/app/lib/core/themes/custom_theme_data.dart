import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.purple,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.white,
        elevation: 2,
        shape: CircularNotchedRectangle(),
      ));
}
