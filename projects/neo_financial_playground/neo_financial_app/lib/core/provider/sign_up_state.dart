import 'package:flutter/material.dart';

import '../data/local/shared_preferences.dart';
import '../data/models/user.dart';
import '../data/services/service.dart';

class SignUpState with ChangeNotifier {
  String _email = '',
      _password = '',
      _phone = '',
      _promoCode = '',
      _passwordStatus = '';
  bool _emailStatus = false;
  Color _firstBar = Colors.grey,
      _secondBar = Colors.grey,
      _thirdBar = Colors.grey;
  final String _passwordPattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!.,/"}{:;@#\$&*~]).{10,}$';
  final String _emailPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  String get email => _email;
  String get password => _password;
  String get phone => _phone;
  String get promoCode => _promoCode;
  String get passwordStatus => _passwordStatus;
  Color get firstBar => _firstBar;
  Color get secondBar => _secondBar;
  Color get thirdBar => _thirdBar;
  bool get emailStatus => _emailStatus;
  setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  setPhone(String phone) {
    _phone = phone;
    notifyListeners();
  }

  setPromoCode(String promoCode) {
    _promoCode = promoCode;
    notifyListeners();
  }

  controlEmail() {
    email.isNotEmpty && !RegExp(_emailPattern).hasMatch(email)
        ? _emailStatus = true
        : _emailStatus = false;
  }

  controlPassword() {
    if (_password.isEmpty || _password.length < 10) {
      _firstBar = Colors.yellow;
      _secondBar = Colors.grey;
      _thirdBar = Colors.grey;
      _passwordStatus = 'Weak';
    } else if (RegExp(_passwordPattern).hasMatch(_password)) {
      if (_password.length > 13) {
        _firstBar = Colors.green;
        _secondBar = Colors.green;
        _thirdBar = Colors.green;
        _passwordStatus = 'Strong';
      } else {
        _firstBar = Colors.green;
        _secondBar = Colors.green;
        _thirdBar = Colors.grey;
        _passwordStatus = 'Middle';
      }
    }
  }

  signUp() async {
    try {
      if (_email.isNotEmpty && _password.isNotEmpty && _phone.isNotEmpty) {
        await UserRetrofit().setUsers(User(
            name: "user",
            email: _email,
            password: _password,
            phone: _phone,
            id: ''));
        Future<List<User>> result = UserRetrofit().getUsers();
        List<User> users = await result;
        UserSharedPreferences.setUserID(users.last.id);
      }
    } catch (e) {
      //TODO: Here will be update
    }
  }

  emailControl() {
    //TODO: Here will be update
  }

  passwordIndicator() {
    //TODO: Here will be update
    //red yellow green
  }
}
