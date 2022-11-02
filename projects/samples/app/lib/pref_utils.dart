import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  ///
  /// 0: LIGHT
  /// 1: DARK
  /// 2: ORANGE
  ///
  static const String_PREF_THEME = "app_theme";

  static Future<void> saveTheme(int themeIndex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(_PREF_THEME, themeIndex);
}
