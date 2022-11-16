import 'package:flutter/material.dart';

class ValidationItem {
  final String? value;
  final String? error;

  ValidationItem(this.value, this.error);
}

class SignUpState with ChangeNotifier {
  ValidationItem _firstName = ValidationItem(null, null);
  ValidationItem get firstName => _firstName;

  ValidationItem _email = ValidationItem(null, null);
  ValidationItem get email => _email;

  ValidationItem _password = ValidationItem(null, null);
  ValidationItem get password => _password;

  //Tek metot'da birleştirmeye çalış. Sonra bak
  void nameValidation(String value) {
    if (value.length < 2 || value.contains(RegExp(r'[0-9]')) || value.isEmpty) {
      _firstName = ValidationItem(null, "Lütfen geçerli bir isim yazınız.");
    } else {
      _firstName = ValidationItem(value, null);
    }
    notifyListeners();
  }

  void emailValidation(String value) {
    if (value.length < 2 ||
        !value.contains(RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')) ||
        value.isEmpty) {
      _email = ValidationItem(null, "Lütfen geçerli bir email yazınız.");
    } else {
      _email = ValidationItem(value, null);
    }
    notifyListeners();
  }

  void passwordValidation(String value) {
    if (value.length < 6 || value.isEmpty) {
      _password =
          ValidationItem(null, "6 karakterden büyük bir şifre giriniz.");
    } else {
      _password = ValidationItem(value, null);
    }
    notifyListeners();
  }
}
