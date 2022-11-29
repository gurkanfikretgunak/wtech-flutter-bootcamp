import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/model/user/user.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../navigation/navigation_service.dart';

class UserNotifier extends ChangeNotifier {
  final User _user = User();
  User get user => _user;
  SharedPreferences? _prefs;

  init() {
    // getUserById();
    _loadFromPrefs();
  }

  //1. Shared Preferences e kaydettiğimiz değer ile kullanıcı bilgilerini çekeceğiz.
  _initPrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  saveUserId(String id) async {
    await _initPrefs();
    _prefs!.setString('id', id);
    notifyListeners();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    _user.id = _prefs!.getString('id'); //id değerini çekiyoruz.
    notifyListeners();
  }

  _removeFromPrefs() async {
    await _initPrefs();
    _prefs!.remove('id'); //id değerini çekiyoruz.
    notifyListeners();
  }

  bool get isLogin => _user.id != null; //id değeri null değilse kullanıcı giriş yapmış demektir.

  Future<void> getUserById() async {
    await _loadFromPrefs();
    if (_user.id != null) {
      await Service.instance.getUser(_user.id!).then((value) {
        _user.createdAt = value.createdAt;
        _user.name = value.name;
        _user.surname = value.surname;
        _user.email = value.email;
        _user.password = value.password;
        notifyListeners();
      });
    } else {
      Logger().i('User id daha önce kaydedilmemiş');
      notifyListeners();
    }
  }

  Future<void> userLogout() async {
    await _removeFromPrefs();
    if (_user.id == null) {
      NavigationService.instance.navigateToPageClear(routeName: NavigationConstants.welcomePage);
      notifyListeners();
    } else {
      _user.id = null;
      notifyListeners();
    }
  }
}
