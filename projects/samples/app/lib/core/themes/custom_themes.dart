import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData.dark().copyWith(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      );
}
