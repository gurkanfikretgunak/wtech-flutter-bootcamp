import 'package:coursera/core/data/enum/shared_prefence_keys.dart';
import 'package:coursera/core/init/cache/shared_manager.dart';
import 'package:flutter/widgets.dart';

class ThemeSettingViewModel extends ChangeNotifier {
  late bool _isDark = false;
  bool get isDark => _isDark;

  ModelTheme() {
    _isDark = false;
    StorageUtil.getBool(SharedKeys.themeKey);
  }

  set isDark(bool value) {
    _isDark = value;
    StorageUtil.setBool(SharedKeys.themeKey, value);
    notifyListeners();
  }

  getPrefences() async {
    _isDark = await StorageUtil.getBool(SharedKeys.themeKey);
    notifyListeners();
  }
}
