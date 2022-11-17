import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/user/users_model.dart';

part 'data_service.g.dart';

@RestApi(baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/users")
  Future<List<Users>> getUsers();
  @GET("/users/{id}")
  Future<Users> postUsers(@Path("id") String id);
  @POST("/users")
  @FormUrlEncoded()
  Future<Users> loginPage(@Field("email") emailId);
}
