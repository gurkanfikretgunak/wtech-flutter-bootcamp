import 'package:robinhood_playground/core/data/model/user.dart';
import 'package:robinhood_playground/product/client/retrofit_manager.dart';

class GetAllUser {
  static late List<UserModel> _allUser;

  static Future<void> pullUsers() async {
    _allUser = await RetrofitManager.instance.client.getUsers();
  }

  static bool isLogin(String email, String password) {
    for (var item in _allUser) {
      if (item.email == email && item.password == password) {
        return true;
      }
    }

    return false;
    
  }
}
