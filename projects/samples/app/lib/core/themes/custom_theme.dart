import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customTheme() => ThemeData(
    bannerTheme: const MaterialBannerThemeData(
      elevation: 4,
      backgroundColor: Colors.white70,
      leadingPadding: EdgeInsets.all(10),
      contentTextStyle: TextStyle(
        color: Colors.black,fontWeight: FontWeight.bold
      ),
    ),
      useMaterial3: false,
      primarySwatch: Colors.pink,
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
      ));
}
