import '../constants/color_constant.dart';
import 'package:flutter/material.dart';

class MyBottomNavBarTheme {
  static BottomNavigationBarThemeData buildBottomNavigationBarTheme() {
    ColorConstant colorConstant = ColorConstant.instance;

    return BottomNavigationBarThemeData(
        backgroundColor: colorConstant.appGreyLight,
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
