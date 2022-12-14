import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/user.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://637733155c4777651216c731.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/users")
  Future<List<User>> getUsers();

  @GET("/users/{uuID}")
  Future<User> getUser(@Path("uuID") String id);

  @POST("/users")
  Future<User> setUsers(@Body() User user);
}
