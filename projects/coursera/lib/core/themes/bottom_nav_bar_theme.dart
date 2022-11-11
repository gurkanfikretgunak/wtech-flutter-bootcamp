import 'package:coursera/core/constants/constants.dart';
import 'package:flutter/material.dart';

class MyBottomNavBarTheme {
  static BottomNavigationBarThemeData buildBottomNavigationBarTheme() {
    ConstantsClass constant = ConstantsClass.instance;

    return BottomNavigationBarThemeData(
        backgroundColor: constant.appGreyLight,
        elevation: 4,
        selectedItemColor: constant.appBlue,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: constant.appBlue,
        ),
        selectedIconTheme: IconThemeData(
          color: constant.appBlue,
        ));
  }
}
