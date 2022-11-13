import 'package:coursera/core/model/user.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_client.g.dart';

const String baseUrl = "https://636cf5eeab4814f2b273ea87.mockapi.io";

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/user")
  Future<List<User>> getUsers();

  @GET("/user/{id}")
  Future<User> getUser(@Path("id") String id);
}
