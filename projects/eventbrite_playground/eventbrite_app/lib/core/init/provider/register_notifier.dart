import 'package:eventbrite_app/core/model/validation/validation_item.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterNotifier extends ChangeNotifier {
  ValidationItem _confirmEmail = ValidationItem(value: null, error: null);
  ValidationItem get confirmEmail => _confirmEmail;
  ValidationItem _firstName = ValidationItem(value: null, error: null);
  ValidationItem get firstName => _firstName;
  ValidationItem _lastName = ValidationItem(value: null, error: null);
  ValidationItem get lastName => _lastName;
  ValidationItem _password = ValidationItem(value: null, error: null);
  ValidationItem get value => _password;

  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  late SharedPreferences _preferences;

  double _strength = 0;
  double get strength => _strength;

  String _helperText = 'Password must have at least 8 characters.';
  String get helperText => _helperText;

  bool _isObscure = true;
  bool get isObscure => _isObscure;

  String _email = '';
  String get email => _email;

  bool get isValid {
    if (_confirmEmail.value != null &&
        confirmEmail.error == null &&
        _firstName.value != null &&
        _lastName.value != null &&
        _password.value != null) {
      return true;
    } else {
      return false;
    }
  }

  void setEmail() async {
    _preferences = await SharedPreferences.getInstance();
    _email = _preferences.getString('email') ?? 'Boş';
    Logger().i(_email);
  }

  void validateEmail(String value) {
    if (value.isEmpty) {
      _confirmEmail =
          ValidationItem(value: value, error: 'Email cannot be empty');
    } else if (_email != value) {
      _confirmEmail =
          ValidationItem(value: value, error: 'Emails do not match');
    } else {
      _confirmEmail = ValidationItem(value: value, error: null);
    }
    notifyListeners();
  }

  void validateFirstName(String value) {
    if (value.isEmpty) {
      _firstName =
          ValidationItem(value: value, error: 'First name cannot be empty');
    } else {
      _firstName = ValidationItem(value: value, error: null);
    }
    notifyListeners();
  }

  void validateLastName(String value) {
    if (value.isEmpty) {
      _lastName =
          ValidationItem(value: value, error: 'Last name cannot be empty');
    } else {
      _lastName = ValidationItem(value: value, error: null);
    }
    notifyListeners();
  }

  void isObsecure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }

  void checkPassword(String value) {
    value = value.trim();
    if (value.isEmpty) {
      _strength = 0;
      _helperText = 'Password must have at least 8 characters.';
      _password =
          ValidationItem(value: value, error: 'Password cannot be empty');
      notifyListeners();
    } else if (value.length < 8) {
      _strength = 0.25;
      _helperText = 'Weak';
      _password = ValidationItem(value: value, error: null);
      notifyListeners();
    } else {
      if (!regex.hasMatch(value)) {
        _strength = 0.5;
        _helperText = 'Average';
        _password = ValidationItem(value: value, error: null);
        notifyListeners();
      } else {
        _strength = 1;
        _helperText = 'Great!';
        _password = ValidationItem(value: value, error: null);
        notifyListeners();
      }
    }
  }
}
   // should contain at least one upper case
    // should contain at least one lower case
    // should contain at least one digit
    // should contain at least one special character
    // Must be at least 8 characters in length