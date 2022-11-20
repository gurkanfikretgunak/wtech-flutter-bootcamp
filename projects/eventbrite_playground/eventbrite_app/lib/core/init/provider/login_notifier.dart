import 'package:dio/dio.dart';
import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:eventbrite_app/core/model/validation/validation_item.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoginNotifier extends ChangeNotifier {
  final _dio = Dio();
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

  void isEmailExist(String email) {
    NetworkService(_dio).getUsers().then((value) {
      var response = value.map((e) => e.email).toList().contains(email);
      Logger().i(response);
      if (!response) {
        NavigationService.instance.navigateToPage(routeName: NavigationConstants.registerPage);
      } else {
        NavigationService.instance.navigateToPage(routeName: NavigationConstants.passwordPage);
      }
    });
  }
}
