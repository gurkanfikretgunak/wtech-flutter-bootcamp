import 'package:flutter/material.dart';

import '../../model/themes/themes_model.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode selectedThemeMode = appThemes[0].mode;

  setSelectedThemeMode(ThemeMode themeMode) {
    selectedThemeMode = themeMode;
    notifyListeners();
  }
}
