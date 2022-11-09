import 'package:coursera/core/themes/card_theme.dart';
import 'package:coursera/core/themes/elevated_button_theme.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) => ThemeData(
        elevatedButtonTheme:
            MyElevatedButtonTheme.buildElevatedButtonTheme(context),
        cardTheme: MyCardTheme.buildElevatedButtonTheme(context),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        useMaterial3: false,
        primarySwatch: Colors.grey,
      );
}
