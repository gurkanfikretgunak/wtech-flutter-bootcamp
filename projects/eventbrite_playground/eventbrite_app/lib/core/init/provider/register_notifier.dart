import 'package:flutter/material.dart';

class RegisterNotifier extends ChangeNotifier {
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  double _strength = 0;
  double get strength => _strength;
  String _helperText = 'Password must have at least 8 characters.';
  String get helperText => _helperText;
  bool _isObscure = true;
  bool get isObscure => _isObscure;
  void isObsecure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }

  void checkPassword(String password) {
    // should contain at least one upper case
    // should contain at least one lower case
    // should contain at least one digit
    // should contain at least one special character
    // Must be at least 8 characters in length
    password = password.trim();
    if (password.isEmpty) {
      _strength = 0;
      _helperText = 'Password must have at least 8 characters.';
      notifyListeners();
    } else if (password.length < 8) {
      _strength = 0.25;
      _helperText = 'Weak';
      notifyListeners();
    } else {
      if (!regex.hasMatch(password)) {
        _strength = 0.5;
        _helperText = 'Average';
        notifyListeners();
      } else {
        _strength = 1;
        _helperText = 'Great!';
        notifyListeners();
      }
    }
  }
}
