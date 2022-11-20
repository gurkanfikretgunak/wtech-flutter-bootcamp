import 'package:shared_preferences/shared_preferences.dart';

class ThemeChangePreference {
  static const themeSetting = "THEMESETTING";

  setThemePref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeSetting, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeSetting) ?? false;
  }
}
