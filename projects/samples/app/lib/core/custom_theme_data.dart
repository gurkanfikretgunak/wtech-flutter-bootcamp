import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData(
      bannerTheme: const MaterialBannerThemeData(
          elevation: 4,
          backgroundColor: Colors.red,
          leadingPadding: EdgeInsets.all(10),
          contentTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20)),
      useMaterial3: false,
      primarySwatch: Colors.yellow,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.yellow,
        elevation: 2,
        shape: CircularNotchedRectangle(),
      ));
}
