import 'dart:convert';

import 'package:coursera/core/api/api_client.dart';
import 'package:dio/dio.dart';

class UserServiceRetrofit {
  final dio = Dio();

  getUser(String id) {
    dio.options.headers["Demo-Header"] = "demo header";
    final client = RestClient(dio);
    client.getUser(id).then((value) => value);
  }

  getUsers() {
    dio.options.headers["Demo-Header"] = "demo header";
    final client = RestClient(dio);
    client.getUsers().then((value) => value);
  }
}
