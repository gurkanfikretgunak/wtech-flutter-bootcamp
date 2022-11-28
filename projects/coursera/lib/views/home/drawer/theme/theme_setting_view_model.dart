import 'package:coursera/core/data/enum/shared_prefence_keys.dart';
import 'package:flutter/material.dart';

import '../../../../core/init/cache/shared_manager.dart';

class ThemeSettingViewModel extends ChangeNotifier {
  bool _darkTheme = StorageUtil.getBool(SharedKeys.themeKey);
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    StorageUtil.setBool(SharedKeys.themeKey, value);
    notifyListeners();
  }

  bool _isRadioSelected = false;
  bool get isRadioSelected => _isRadioSelected;

  set isRadioSelected(bool newValue) {
    _isRadioSelected = newValue;
    notifyListeners();
  }
}
