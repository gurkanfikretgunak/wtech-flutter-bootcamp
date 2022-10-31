import 'package:flutter/material.dart';

// Tema singleton pattern'i kullanılarak oluşturuldu.

class CustomThemeData {
  CustomThemeData._() {
    _themeData = ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.pink,
    );
  }
  static CustomThemeData instance = CustomThemeData._();

  late final ThemeData _themeData;

  ThemeData get themeData => _themeData;
}
