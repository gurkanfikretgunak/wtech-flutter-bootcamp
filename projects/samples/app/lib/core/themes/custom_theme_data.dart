import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.purple,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white,
          elevation: 2,
          shape: CircularNotchedRectangle(),
        ),
        bannerTheme: const MaterialBannerThemeData(
          elevation: 4,
          backgroundColor: Colors.white70,
          leadingPadding: EdgeInsets.all(10),
          contentTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        textTheme: const TextTheme(),
      );
}
