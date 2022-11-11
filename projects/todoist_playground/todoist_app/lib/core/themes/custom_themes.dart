import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData().copyWith(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.red,
        textTheme: TextTheme(
            headline1: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            headline2: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            caption: TextStyle(color: Colors.black.withOpacity(0.9), fontSize: 20, fontWeight: FontWeight.bold),
            headline3: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 16,
            ),
            subtitle1: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
              fontSize: 15,
            )),
      );
}
