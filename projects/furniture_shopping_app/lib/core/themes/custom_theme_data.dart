import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) => ThemeData(
        elevatedButtonTheme: _buildElevatedButtonTheme(context),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        useMaterial3: false,
        primarySwatch: Colors.grey,
      );

  static ElevatedButtonThemeData _buildElevatedButtonTheme(
      BuildContext context) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromRGBO(0, 0, 0, 1),
        ),
      ),
    );
  }
}
