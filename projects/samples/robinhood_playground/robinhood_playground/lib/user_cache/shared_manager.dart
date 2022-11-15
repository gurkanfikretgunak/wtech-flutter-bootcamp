


import 'package:robinhood_playground/user_cache/shared_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ISharedManager {
  String? getStringValue(SharedKeys keys);
  Future<bool>? setStringValue(SharedKeys keys, String value);
}

class SharedManager implements ISharedManager {
  static SharedManager? _instance;
  SharedPreferences? _preferences;

  SharedManager._();

  static Future<void> initSharedPreferences() async {
    if (SharedManager.instance._preferences != null) return;
    SharedManager.instance._preferences =
        await SharedPreferences.getInstance();
         
  }

  static SharedManager get instance {
    if (_instance != null) {
      return _instance!;
    }
    _instance = SharedManager._();
    return _instance!;
  }

  @override
  String? getStringValue(SharedKeys keys) {
    return _preferences?.getString(keys.toString());
  }

  @override
  Future<bool>? setStringValue(SharedKeys keys, String value) async {
    return await _preferences?.setString(keys.toString(), value) ?? false;
  
  }
}
