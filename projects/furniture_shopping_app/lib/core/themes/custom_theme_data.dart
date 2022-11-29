import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/themes/card_theme.dart';
import 'package:furniture_shopping_app/core/themes/elevated_button_theme.dart';

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
