import 'package:dio/dio.dart';

import '../api/rest_client.dart';
import '../models/user.dart';

class UserRetrofit {
  final dio = Dio();

  getUser(String id) {
    final client = RestClient(dio);
    return client.getUser(id);
  }

  Future<List<User>> getUsers() async {
    final client = RestClient(dio);
    return client.getUsers();
  }

//TODO: will be setUser in rest_client
  Future<User> setUsers(User user) async {
    final client = RestClient(dio);
    return client.setUsers(user);
  }

  Future<User?> login({required String email, required String password}) async {
    try {
      var response = await UserRetrofit().getUsers();
      return response
          .where((element) => element.email == email)
          .where((element) => element.password == password)
          .first;
    } catch (e) {
      return null;
    }
  }

  Future<User?> register({required User user}) async {
    try {
      var response = await UserRetrofit().setUsers(user);
      return response;
    } catch (e) {
      return null;
    }
  }
}
