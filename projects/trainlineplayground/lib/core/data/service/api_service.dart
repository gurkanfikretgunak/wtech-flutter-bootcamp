import 'package:dio/dio.dart';

import 'package:logger/logger.dart';
import 'package:trainlineplayground/core/data/api/client_api.dart';

class ApiService {
  final dio = Dio();
  final logger = Logger();

  getMyTaskList() {
    dio.options.headers["Demo-Header"] = "demo header";
    final client = RestClient(dio);

    client.getTasks().then((value) => logger.i(value.length));
  }
}