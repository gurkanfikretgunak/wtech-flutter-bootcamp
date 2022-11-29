import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferences {
  static SharedPreferences? _preferences;
  static const String _keyUserID = 'userID';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUserID(String userID) async =>
      await _preferences!.setString(_keyUserID, userID);

  static String? getUserID() => _preferences!.getString(_keyUserID);
}
