import 'package:coursera/core/constants/constant_libary.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar_theme.dart';
import 'card_theme.dart';
import 'elevated_button_theme.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) {
    //thema olarak parçala
    return ThemeData(
      scaffoldBackgroundColor: ColorConstant.instance.appWhite,
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.transparent,
        iconTheme: IconThemeData(
          color: ColorConstant.instance.appBlue,
          size: 20,
        ),
      ),
      primarySwatch: Colors.grey,
      iconTheme: IconThemeData(
        color: ColorConstant.instance.appBlue,
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
