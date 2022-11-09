import 'package:flutter/material.dart';

class MyElevatedButtonTheme {
  static ElevatedButtonThemeData buildElevatedButtonTheme(
      BuildContext context) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromRGBO(0, 0, 0, 1),
        ),
      ),
    );
  }
}
