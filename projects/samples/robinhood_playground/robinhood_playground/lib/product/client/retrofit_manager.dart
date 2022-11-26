import 'package:dio/dio.dart';
import 'package:robinhood_playground/core/data/api/client_api.dart';

class RetrofitManager {
  RetrofitManager._();
  static RetrofitManager instance = RetrofitManager._();

  final _client = ApiClient(Dio(BaseOptions(contentType: 'application/json"')));

  get client => _client;
}
