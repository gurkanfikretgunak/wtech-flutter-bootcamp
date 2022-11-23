import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../model/user/users_model.dart';
import '../../service/data_service.dart';

class ServiceProvider with ChangeNotifier {
  List<Users> response = [];
  late Users newUser;

  void fetchUser() async {
    final client = RestClient(Dio(BaseOptions(contentType: "application/json")),
        baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/");
    response = await client.getUsers();
    notifyListeners();
  }

  Future<bool> userEmailController(email) async {
    for (var item in response) {
      if (item.email == email.text) {
        return true;
      }
    }
    return false;
  }

  Future<bool> userPasswordController(email, password) async {
    for (var item in response) {
      if (item.password == password.text && item.email == email.text) {
        return true;
      }
    }
    return false;
  }

  Future<bool> postUser(email, password, name) async {
    for (var item in response) {
      if (item.email == email.text) {
        return false;
      }
    }

    RestClient(Dio(BaseOptions(contentType: "application/json")),
            baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/")
        .loginPage(email.text, password.text, name.text);
    return true;
  }
}
