import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData(
        bannerTheme: const MaterialBannerThemeData(
            backgroundColor: Colors.white,
            contentTextStyle: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
        listTileTheme: ListTileThemeData(textColor: Colors.red),
      );
}
