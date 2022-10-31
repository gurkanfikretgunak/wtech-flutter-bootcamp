import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData(
        bannerTheme: const MaterialBannerThemeData(
            elevation: 4,
            backgroundColor: Colors.white70,
            leadingPadding: EdgeInsets.all(10),
            contentTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20)),
        useMaterial3: false,
        primarySwatch: Colors.pink,
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white,
          elevation: 2,
          shape: CircularNotchedRectangle(),
        ),
      );
}
