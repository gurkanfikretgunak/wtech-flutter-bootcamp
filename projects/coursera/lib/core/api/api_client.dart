import 'package:coursera/core/model/course.dart';
import 'package:coursera/core/model/topic.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_client.g.dart';

const String baseUrl = "https://636cf5eeab4814f2b273ea87.mockapi.io";

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/topic")
  Future<List<Topic>> getTopics();

  @GET("/topic/{id}")
  Future<Topic> getTopic(@Path("id") String id);

  @GET("/course")
  Future<List<Course>> getCourses();

  @GET("/course/{id}")
  Future<Course> getCourse(@Path("id") String id);
}
