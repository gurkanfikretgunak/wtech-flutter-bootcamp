import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../model/user/users_model.dart';
import '../../service/data_service.dart';

class ServiceProvider with ChangeNotifier {
  final client = RestClient(Dio(BaseOptions(contentType: "application/json")), baseUrl: "${dotenv.env['BASE_URL']}");
  List<Users> response = [];
  String userName = "";
  String userEmail = "";
  String idUser = "";
  String passwordUser = "";
  String imageUser = "";
  int durationUser = 0;
  Future<bool> passwordCheck(email, password) async {
    response = await client.getUsers();
    notifyListeners();
    for (var item in response) {
      if (item.password == password && item.email == email) {
        return true;
      }
    }
    return false;
  }

  Future<bool> fetchUser(email) async {
    response = await client.getUsers();
    notifyListeners();
    for (var item in response) {
      if (item.email == email) {
        userEmail = email;
        userName = item.name!;
        idUser = item.id!.toString();
        passwordUser = item.password!;
        imageUser = item.image!;
        durationUser = item.duration!;
        return true;
      }
    }
    return false;
  }

  Future<bool> postUser(email, name, password) async {
    for (var item in response) {
      if (item.email == email) {
        return false;
      }
    }
    client.loginPage(email, password, name);
    userEmail = email;
    userName = name;
    return true;
  }

  Future<bool> updateUser(passwordUs) async {
    client.updateUser(idUser, passwordUs);
    return true;
  }

  Future<bool> updateImage(imageUs) async {
    client.updateImage(idUser, imageUs);
    return true;
  }

  Future<bool> loginAction() async {
    await Future.delayed(Duration(seconds: durationUser));
    return true;
  }
}
