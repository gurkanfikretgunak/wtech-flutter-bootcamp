import 'package:coursera/core/base/base_view_model.dart';
import 'package:coursera/core/data/enum/enum_hive.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../core/data/model/user.dart';
import '../../../../core/data/network/services/user_service.dart';
import '../../../../core/init/cache/user_cache_manager.dart';

class SignInWithEmailViewModel extends IViewModel<SignInWithEmailViewModel> {
  bool _obscureText = true;
  bool get obscureText => _obscureText;

  bool _isFormValidateEmail = false;
  bool get isFormValidateEmail => _isFormValidateEmail;

  bool _isFormValidatePassword = false;
  bool get isFormValidatePassword => _isFormValidatePassword;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Logger logger = Logger();

  User _user = User();
  User get user => _user;

  set userAdd(User user) {
    _user = user;
    notifyListeners();
  }

  changeObscureTextState() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  Future<bool> loginControl(BuildContext context) async {
    var response = await UserService().getAll();
    // ignore: use_build_context_synchronously
    var provider = SignInWithEmailViewModel().of(context, listen: false);
    for (var item in response) {
      if (item.email == provider.emailController.text &&
          item.password == provider.passwordController.text) {
        UserCacheManager().put(EnumHive.activeUser.toString(), item);
        logger.i(UserCacheManager().getValues());

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
