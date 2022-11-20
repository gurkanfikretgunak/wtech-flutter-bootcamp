import 'package:eventbrite_app/core/model/validation/validation_item.dart';
import 'package:flutter/material.dart';

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
}
