import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:eventbrite_app/core/model/validation/validation_item.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PasswordNotifier extends ChangeNotifier {
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

  Future<void> login({required String email, required String password}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Service.instance.isLogin(email: email, password: password).then((value) => {
          if (value != null)
            {
              Logger().i(value),
              Logger().i(value.id),
              Logger().i('Login Success'),
              prefs.setString('id', value.id ?? 'Hata').then((value) => {
                    NavigationService.instance.navigateToPage(
                      routeName: NavigationConstants.homePage,
                    ),
                  })
            }
          else
            {
              Logger().i('Login Failed'),
            }
        });
  }
}
