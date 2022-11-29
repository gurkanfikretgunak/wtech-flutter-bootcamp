import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/local/shared_preferences.dart';
import '../data/models/user.dart';
import '../data/services/service.dart';

class SignUpState with ChangeNotifier {
  String _email = '', _password = '', _phone = '', _status = '';
  String get email => _email;
  String get password => _password;
  String get phone => _phone;
  String get status => _status;

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

  controlPassword() {
    //TODO: Here will be update
    if (_password.isEmpty || _password.length < 8) {
      _status = 'Weak';
    } else {
      _status = 'Strong';
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
