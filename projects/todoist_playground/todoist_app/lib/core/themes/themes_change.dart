import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    // ignore: deprecated_member_use

    cardColor: Colors.white,
    backgroundColor: Colors.white,
    primaryColor: Colors.red,
    // ignore: deprecated_member_use
    accentColor: Colors.redAccent,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.red,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.black),
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

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    // ignore: deprecated_member_use
    buttonColor: Colors.red,
    cardColor: Colors.grey[800],
    backgroundColor: Colors.grey[800],
    primaryColor: Colors.grey,
    // ignore: deprecated_member_use
    accentColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.grey,
    iconTheme: IconThemeData(
      color: Colors.grey[600],
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.red),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
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
