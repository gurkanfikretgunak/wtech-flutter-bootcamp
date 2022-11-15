import 'package:eventbrite_app/core/constants/enums/app_theme_enums.dart';
import 'package:eventbrite_app/core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  // ThemeData _currentTheme = AppThemeLight.instance.theme;
  // ThemeData get currentTheme => _currentTheme;
  ThemeData _currentTheme = ThemeData.light();
  ThemeData get currentTheme => _currentTheme;

  // AppThemeType _currentThemeType = AppThemeType.light;
  // AppThemeType get currentThemeType => _currentThemeType;

  // void changeTheme(AppThemeType type) {
  //   if (type == AppThemeType.light) {
  //     _currentTheme = ThemeData.light();
  //   } else {
  //     _currentTheme = ThemeData.dark();
  //   }
  //   notifyListeners();
  // }
  void changeTheme() {
    final isDark = _currentTheme == ThemeData.dark();
    if (isDark) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
  // void changeTheme() {
  //   if (_currentThemeType == AppThemeType.light) {
  //     _currentTheme = ThemeData.dark();
  //     _currentThemeType = AppThemeType.dark;
  //   } else {
  //     _currentTheme = AppThemeLight.instance.theme;
  //     _currentThemeType = AppThemeType.dark;
  //   }
  //   notifyListeners();
  // }
}
