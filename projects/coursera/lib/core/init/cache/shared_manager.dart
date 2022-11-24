import 'package:shared_preferences/shared_preferences.dart';

import '../../data/enum/shared_prefence_keys.dart';

class StorageUtil {
  static StorageUtil? _storageUtil;
  static SharedPreferences? _preferences;

  static Future<StorageUtil?> getInstance() async {
    if (_storageUtil == null) {
      var secureStorage = StorageUtil._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil;
  }

  StorageUtil._();
  Future _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<bool>? setBool(SharedKeys key, bool value) {
    if (_preferences == null) return null;
    return _preferences!.setBool(key.toString(), value);
  }

  static bool getBool(String key, {bool defValue = false}) {
    if (_preferences == null) return defValue;
    return _preferences!.getBool(key) ?? defValue;
  }
}
