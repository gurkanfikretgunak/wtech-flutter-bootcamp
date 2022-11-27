import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:patreon_app/core/data/models/user/user.dart';
import 'package:patreon_app/core/data/services/service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/models/valid/valid.dart';

class LoginProvider with ChangeNotifier, DiagnosticableTreeMixin {
  final _dio = Dio();
  Validation _email = Validation(null, null);
  Validation _password = Validation(null, null);
  Validation get email => _email;
  Validation get password => _password;
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

  Future<void> signInEmailAndPassword(BuildContext context,
      {required String email, required String password}) async {
    Service().loginUser(email: email, password: password).then((value) => {
          if (value != null) {Navigator.pushNamed(context, '/navigate')}
        });
  }
}
