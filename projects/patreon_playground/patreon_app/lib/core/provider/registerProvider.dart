import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:patreon_app/core/data/models/valid/valid.dart';

import '../data/models/user/user.dart';

import '../data/services/service.dart';

class RegisterProvider extends ChangeNotifier {
  final _dio = Dio();
  Validation _email = Validation(null, null);
  Validation _name = Validation(null, null);
  Validation _password = Validation(null, null);
  Validation get email => _email;
  Validation get name => _name;
  Validation get password => _password;

  bool get isValid {
    if (_email.value != null &&
        _email.error == null &&
        _name.value != null &&
        _name.value != null &&
        _password.value != null &&
        _password.error == null) {
      return true;
    } else {
      return false;
    }
  }

  void validateName(String name) {
    if (name.isEmpty) {
      _name = Validation(name, 'Name cannot be empty');
    } else {
      _name = Validation(name, null);
    }
    notifyListeners();
  }

  void validateEmail(String? email) {
    if (email!.isEmpty) {
      _email = Validation(email, 'Email cannot be empty');
    } else {
      _email = Validation(email, null);
    }
    notifyListeners();
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      _password = Validation(value, 'Password cannot be empty');
      notifyListeners();
    } else {
      _password = Validation(value, null);
      notifyListeners();
    }
  }

  void createUser() {
    User newUser = User(
      email: email.value!,
      name: name.value!,
      password: password.value!,
    );
    NetworkService(_dio).createUser(newUser).then((value) {});
  }
}
