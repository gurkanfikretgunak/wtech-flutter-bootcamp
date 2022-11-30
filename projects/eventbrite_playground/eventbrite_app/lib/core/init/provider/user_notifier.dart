import 'package:eventbrite_app/core/init/cache/cache_manager.dart';
import 'package:eventbrite_app/core/model/user/user.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class UserNotifier extends ChangeNotifier with CacheManager {
  bool isLogin = false;
  User? model;

  Future<void> fetchUserLogin() async {
    final id = await getToken();
    Logger().i("Notifier => $id");
    if (id != null) {
      isLogin = true;
      notifyListeners();
    } else {
      isLogin = false;
      notifyListeners();
    }
  }
  //TODO Bunun burdan taşınması lazım
  Future<User> setUser() async {
    final id = await getToken();
    if (id != null) {
      final user = await Service.instance.getUser(id);
      return user;
    } else {
      throw Exception('User Not Found');
    }
  }

  Future<void> logout() async {
    final remove = await removeToken();
    if (remove) {
      isLogin = false;
      model = null;
      notifyListeners();
    }
  }
}
