import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  static Color categoryIconColor = Colors.white;

  static ThemeData customThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: false,
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark, color: Colors.white),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12),
      ),
      inputDecorationTheme:
          const InputDecorationTheme(iconColor: Colors.black54),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      )),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(fontSize: 14, color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black, fontSize: 17),
        labelMedium: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        displayLarge: TextStyle(
            color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 27),
        displaySmall: TextStyle(color: Colors.white, fontSize: 14),
        labelSmall: TextStyle(color: Colors.red, fontSize: 16),
        displayMedium: TextStyle(color: Colors.black54, fontSize: 15),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }
}
