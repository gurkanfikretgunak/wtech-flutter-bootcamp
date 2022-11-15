import 'package:eventbrite_app/core/constants/enums/app_theme_enums.dart';
import 'package:eventbrite_app/core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.theme;
  ThemeData get currentTheme => _currentTheme;

  changeTheme(AppThemeType type) {
    if (type == AppThemeType.light) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
