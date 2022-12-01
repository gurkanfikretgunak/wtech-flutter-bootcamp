import 'package:dio/dio.dart';
import 'package:robinhood_playground/core/data/api/client_api.dart';

class RetrofitManager {
  static RetrofitManager? _instance;
  var _client;
  RetrofitManager._();

  static RetrofitManager get instance {
    if (_instance != null) {
      return _instance!;
    }
    _instance = RetrofitManager._();
    return _instance!;
  }

  static Future<void> initRetrofit() async {
    if (RetrofitManager.instance._client != null) return;
    RetrofitManager.instance._client =
        ApiClient(Dio(BaseOptions(contentType: 'application/json"')));
  }

   get client => _client;
}


