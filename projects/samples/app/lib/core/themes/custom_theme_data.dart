import 'package:flutter/material.dart';

// Tema singleton pattern'i kullanılarak oluşturuldu.

class CustomThemeData {
  CustomThemeData._() {
    _themeData = ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.orange,
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.tealAccent.shade200,
        elevation: 2,
        shape: const CircularNotchedRectangle(),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.blueAccent,
        padding: const EdgeInsets.all(1),
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(side: BorderSide(style: BorderStyle.solid)),
              foregroundColor: Colors.purpleAccent,
              shadowColor: Colors.deepOrange)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purpleAccent,
          unselectedItemColor: Colors.brown,
          selectedLabelStyle: TextStyle(fontSize: 16),
          backgroundColor: Colors.tealAccent),
    );
  }
  static CustomThemeData instance = CustomThemeData._();

  late final ThemeData _themeData;

  ThemeData get themeData => _themeData;
}
