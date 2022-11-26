import 'dart:io';

import 'package:dio/dio.dart';
import 'package:robinhood_playground/core/data/model/user.dart';
import 'package:logger/logger.dart';

class ApiService {
  final dio =
      Dio(BaseOptions(baseUrl: 'https://636cc87fab4814f2b26e1ba4.mockapi.io/'));

  final logger = Logger();

  Future<UserModel?>? getUserList(int id) async {
    final response = await dio.get('users/$id');

    var data = response.data;

    if (data is Map<String, dynamic>) {
      var resault = UserModel.fromJson(data);
      logger.i(resault.email);
      return resault;
    }

    return null;
  }

  Future<void> postUser(UserModel model) async {
    final response = await dio.post('users', data: model);
    if (response.statusCode == HttpStatus.created) {
      logger.i(model);
    }
  }
}
