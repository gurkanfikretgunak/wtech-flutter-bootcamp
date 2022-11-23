import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../data/network/api/api_client.dart';

abstract class IRetrofitService<T> {
  final logger = Logger();

  final client = RestClient(Dio());

  Future<List<T>>? getAll() {
    return null;
  }

  Future<T>? getById(String id) {
    return null;
  }

  Future<T>? createEntity(T entity) {
    return null;
  }
}
