import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/core/themes/bottom_nav_bar_theme.dart';
import 'package:coursera/core/themes/card_theme.dart';
import 'package:coursera/core/themes/elevated_button_theme.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) {
    Constant constant = Constant.instance;
    //thema olarak parçala
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.transparent,
        iconTheme: IconThemeData(
          color: constant.appBlue,
          size: 20,
        ),
      ),
      primarySwatch: Colors.grey,
      iconTheme: IconThemeData(
        color: constant.appBlue,
        size: 27,
      ),
      elevatedButtonTheme:
          MyElevatedButtonTheme.buildElevatedButtonTheme(context),
      cardTheme: MyCardTheme.buildElevatedButtonTheme(context),
      bottomNavigationBarTheme:
          MyBottomNavBarTheme.buildBottomNavigationBarTheme(),
    );
  }
}
