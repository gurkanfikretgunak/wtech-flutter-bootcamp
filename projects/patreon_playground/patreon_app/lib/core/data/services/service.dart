import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:retrofit/retrofit.dart';

import '../models/user/user.dart';

part 'service.g.dart';

@RestApi(baseUrl: 'https://636c08167f47ef51e140c438.mockapi.io/api/v1/')
abstract class NetworkService {
  factory NetworkService(Dio dio, {String baseUrl}) = _NetworkService;

  @GET('/users')
  Future<List<User>> getUsers();

  @POST('/users')
  Future<User> createUser(@Body() User user);

  @GET("/users/{id}")
  Future<User> fetchUser(@Path("id") String id);
}

class Service {
  Dio dio = Dio();
  Future<User?> loginUser(
      {required String email, required String password}) async {
    try {
      var response = await NetworkService(dio).getUsers();
      return response
          .where((element) => element.email == email)
          .where((element) => element.password == password)
          .first;
    } catch (e) {
      return null;
    }
  }
}
