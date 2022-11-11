import 'package:coursera/core/constants/constants.dart';
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
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: ConstantsClass.instance.appGrey,
            elevation: 4,
            selectedItemColor: ConstantsClass.instance.appBlue,
            showSelectedLabels: true,
            selectedLabelStyle: TextStyle(
              color: ConstantsClass.instance.appBlue,
            ),
            selectedIconTheme: IconThemeData(
              color: ConstantsClass.instance.appBlue,
            )),
      );
}
