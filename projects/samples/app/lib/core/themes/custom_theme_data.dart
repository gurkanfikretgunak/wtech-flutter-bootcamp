import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData(
    bannerTheme: const MaterialBannerThemeData(
      elevation: 30,
      backgroundColor: Colors.white,
      leadingPadding: EdgeInsets.all(10),
      contentTextStyle: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    ),
    useMaterial3: false,
    primarySwatch: Colors.green,

    /*bottomAppBarTheme: const BottomAppBarTheme(
      //color: Colors.red,
      elevation: 30,
      shape: CircularNotchedRectangle(),
    ),*/
  );
}