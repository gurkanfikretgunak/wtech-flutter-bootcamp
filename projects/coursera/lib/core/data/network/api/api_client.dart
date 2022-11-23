import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../model/course.dart';
import '../../model/topic.dart';
import '../../model/user.dart';

part 'api_client.g.dart';

const String baseUrl = "https://636cf5eeab4814f2b273ea87.mockapi.io";

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/topic")
  Future<List<Topic>> getAllTopics();

  @GET("/topic/{id}")
  Future<Topic> topicGetById(@Path("id") String id);

  @GET("/course")
  Future<List<Course>> getAllCourses();

  @GET("/course/{id}")
  Future<Course> courseGetByIs(@Path("id") String id);

  @POST("/users")
  Future<User> createUser(@Body() User user);
}
