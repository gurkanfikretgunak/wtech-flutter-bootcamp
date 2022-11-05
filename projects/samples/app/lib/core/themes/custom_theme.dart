import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customTheme() => ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.blue,
      backgroundColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(color: Colors.cyan),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.black,
      ));
}
