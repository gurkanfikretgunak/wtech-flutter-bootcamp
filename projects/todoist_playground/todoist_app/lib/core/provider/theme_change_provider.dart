import 'package:flutter/material.dart';

import '../../cache/theme_preference.dart';

class ThemeChangeProvider extends ChangeNotifier {
  ThemeChangePreference appPreference = ThemeChangePreference();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    appPreference.setThemePref(value);
    notifyListeners();
  }
}
