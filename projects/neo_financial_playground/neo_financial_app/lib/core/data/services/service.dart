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

  Future<User> setUsers(User user) async {
    final client = RestClient(dio);
    return client.setUsers(user);
  }
}
