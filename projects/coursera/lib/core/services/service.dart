import '../api/api_client.dart';
import '../model/course.dart';
import '../model/topic.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class TopicServiceRetrofit {
  final logger = Logger();
  final dio = Dio();

  getTopic(String id) {
    dio.options.headers["Demo-Header"] = "demo header";
    final client = RestClient(dio);
    return client.getTopic(id);
  }

  Future<List<Topic>> getTopics() async {
    dio.options.headers["Demo-Header"] = "demo header";
    final client = RestClient(dio);
    return client.getTopics();
  }

  getCourse(String id) {
    dio.options.headers["Demo-Header"] = "demo header";
    final client = RestClient(dio);
    return client.getCourse(id);
  }

  Future<List<Course>> getCourses() async {
    dio.options.headers["Demo-Header"] = "demo header";
    final client = RestClient(dio);
    return client.getCourses();
  }
}
