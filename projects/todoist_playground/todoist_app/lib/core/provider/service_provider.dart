import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../model/user/users_model.dart';
import '../../service/data_service.dart';

class ServiceProvider with ChangeNotifier {
  List<Users> response = [];

  void fetchUser() async {
    final client = RestClient(Dio(BaseOptions(contentType: "application/json")),
        baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/");
    response = await client.getUsers();
    notifyListeners();
  }

  Future<bool> fetch(email) async {
    for (var item in response) {
      if (item.email == email.text) {
        print("kullanıcı var");
        return true;
      }
    }
    return false;
  }

  Future<bool> hasUser(email) {
    return fetch(email);
  }
}
