import 'package:flutter/material.dart';

class SignInWithEmailViewModel with ChangeNotifier {
  bool _obscureText = true;
  bool get obscureText => _obscureText;

  bool _isFormValidateEmail = false;
  bool get isFormValidateEmail => _isFormValidateEmail;

  bool _isFormValidatePassword = false;
  bool get isFormValidatePassword => _isFormValidatePassword;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  changeObscureTextState() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  controlControllerLength(value, {required String validateType}) {
    switch (validateType) {
      case 'email':
        _isFormValidateEmail = control(value);
        notifyListeners();
        break;
      case 'password':
        _isFormValidatePassword = control(value);
        notifyListeners();
        break;
      default:
    }
  }

  control(value) {
    return (value.length > 0) ? true : false;
  }
}
