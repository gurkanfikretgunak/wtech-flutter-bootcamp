import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData buildLightTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      // ignore: deprecated_member_use
      backgroundColor: Colors.grey[100],
      primaryColor: Colors.white,
      // ignore: deprecated_member_use
      accentColor: Colors.red,
      scaffoldBackgroundColor: Colors.white.withOpacity(0.95),
      iconTheme: const IconThemeData(
        color: Colors.red,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.red),
      appBarTheme: const AppBarTheme(backgroundColor: Colors.red),
      textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          caption: TextStyle(color: Colors.black.withOpacity(0.9), fontSize: 20, fontWeight: FontWeight.bold),
          headline3: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 16,
          ),
          subtitle1: TextStyle(
            color: Colors.grey[600],
            fontSize: 15,
          )),
    );
  }

  static ThemeData buildDarkTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      primaryColor: Colors.grey[850],
      backgroundColor: Colors.grey[900],

      scaffoldBackgroundColor: Colors.grey[900],
      // ignore: deprecated_member_use
      colorScheme: const ColorScheme.dark(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey[850],
      ),
      iconTheme: IconThemeData(
        color: Colors.red[800],
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.red[800], foregroundColor: Colors.white),
      textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          caption: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 20, fontWeight: FontWeight.bold),
          headline3: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 16,
          ),
          subtitle1: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          )),
    );
  }
}
