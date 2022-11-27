import 'package:flutter/material.dart';

import '../../constants/constant_libary.dart';

class MyBottomNavBarTheme {
  static BottomNavigationBarThemeData buildBottomNavigationBarTheme() {
    ColorConstant colorConstant = ColorConstant.instance;

    return BottomNavigationBarThemeData(
        backgroundColor: ColorConstant.instance.appGrey2,
        elevation: 4,
        selectedItemColor: colorConstant.appBlue,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: colorConstant.appBlue,
        ),
        selectedIconTheme: IconThemeData(
          color: colorConstant.appBlue,
        ));
  }
}
