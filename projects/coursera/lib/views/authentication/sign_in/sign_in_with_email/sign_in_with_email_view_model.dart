import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/data/network/services/user_service.dart';

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

  Future<bool> loginControl(BuildContext context) async {
    var response = await UserService().getAll();

    for (var item in response) {
      if (item.email ==
              // ignore: use_build_context_synchronously
              context.read<SignInWithEmailViewModel>().emailController.text &&
          item.password ==
              // ignore: use_build_context_synchronously
              context
                  .read<SignInWithEmailViewModel>()
                  .passwordController
                  .text) {
        return true;
      }
    }
    return false;
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
