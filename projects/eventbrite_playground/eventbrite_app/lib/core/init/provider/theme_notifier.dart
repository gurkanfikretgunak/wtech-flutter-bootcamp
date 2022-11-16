import 'package:eventbrite_app/core/init/theme/app_theme_dark.dart';
import 'package:eventbrite_app/core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.theme;
  ThemeData get currentTheme => _currentTheme;

  void changeTheme() {
    final isDark = _currentTheme == AppThemeDark.instance.theme;
    if (isDark) {
      _currentTheme = AppThemeLight.instance.theme;
    } else {
      _currentTheme = AppThemeDark.instance.theme;
    }
    notifyListeners();
  }
}
