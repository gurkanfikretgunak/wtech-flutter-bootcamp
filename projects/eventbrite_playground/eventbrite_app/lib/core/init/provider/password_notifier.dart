import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/init/cache/cache_manager.dart';
import 'package:eventbrite_app/core/model/validation/validation_item.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../navigation/navigation_service.dart';

class PasswordNotifier extends ChangeNotifier with CacheManager {
  bool _isObscure = true;
  bool get isObscure => _isObscure;

  ValidationItem _password = ValidationItem(value: null, error: null);
  ValidationItem get password => _password;

  bool get isValid {
    if (_password.value != null && _password.error == null) {
      return true;
    } else {
      return false;
    }
  }

  void isObsecure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      _password = ValidationItem(value: value, error: 'Password is required');
    } else {
      _password = ValidationItem(value: value, error: null);
    }
    notifyListeners();
  }

  //TODO Bunun burdan taşınması lazım
  Future<void> login({required String email, required String password}) async {
    final response = await Service.instance.login(email: email, password: password);
    if (response != null) {
      await saveToken(response.id ?? '');
      NavigationService.instance.navigateToPageClear(routeName: NavigationConstants.welcomePage);
    } else {
      Logger().i('Login Failed');
    }
  }
}
