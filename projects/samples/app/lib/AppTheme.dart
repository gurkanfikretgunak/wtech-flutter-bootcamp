import 'package:flutter/material.dart';
import 'package:flutter_bloc_ile_theme/method_1/bloc_theme.dart';

class AppTheme {
  static ThemeData theme = _lightTheme;

  static void changeTheme(SupportedTheme sTheme) {
    switch (sTheme) {
      case SupportedTheme.LIGHT:
        theme = _lightTheme;
        break;
      case SupportedTheme.DARK:
        theme = _darkTheme;
        break;
      case SupportedTheme.ORANGE:
        theme = _orangeTheme;
        break;
    }
  }

  static ThemeData _darkTheme = ThemeData.dark().copyWith(
    accentColor: Colors.white,
    textTheme: TextTheme(
      headline: TextStyle(fontSize: 24),
    ),
  );

  static ThemeData _lightTheme = ThemeData.light().copyWith(
    accentColor: Colors.black,
  );

  static ThemeData _orangeTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.teal,
    accentColor: Colors.orange,
    textTheme: TextTheme(
      body1: TextStyle(fontSize: 24, color: Colors.orange),
      headline: TextStyle(fontSize: 100, color: Colors.orange),
    ),
  );
}