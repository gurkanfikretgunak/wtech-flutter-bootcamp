import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:eventbrite_app/core/model/validation/validation_item.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoginNotifier extends ChangeNotifier {
  ValidationItem _email = ValidationItem(value: null, error: null);
  ValidationItem get email => _email;

  bool get isValid {
    if (_email.value != null && _email.error == null) {
      return true;
    } else {
      return false;
    }
  }

  void validateEmail(String email) {
    if (email.isEmpty) {
      _email = ValidationItem(value: email, error: 'Email cannot be empty');
    } else if (!email.contains('@')) {
      _email = ValidationItem(value: email, error: 'Email is not valid');
    } else {
      _email = ValidationItem(value: email, error: null);
    }
    notifyListeners();
  }
 //TODO Bunun burdan taşınması lazım
  void isEmailExist(String email) {
    Service.instance.isEmailExist(email: email).then((value) {
      Logger().i(value ? 'Email exist => $email' : 'Email not exist => $email');
      if (!value) {
        NavigationService.instance.navigateToPage(routeName: NavigationConstants.registerPage);
      } else {
        NavigationService.instance.navigateToPage(routeName: NavigationConstants.passwordPage);
      }
    });
  }
}
