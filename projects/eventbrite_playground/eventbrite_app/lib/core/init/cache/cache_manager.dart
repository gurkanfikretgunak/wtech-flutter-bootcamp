import 'package:shared_preferences/shared_preferences.dart';

mixin CacheManager {
  Future<bool> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(CacheManagerKey.token.toString(), token);
    return true;
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(CacheManagerKey.token.toString());
  }

  Future<bool> removeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(CacheManagerKey.token.toString());
    return true;
  }
}

enum CacheManagerKey { token }
