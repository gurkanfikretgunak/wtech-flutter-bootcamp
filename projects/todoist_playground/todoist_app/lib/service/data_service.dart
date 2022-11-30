import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/user/users_model.dart';

part 'data_service.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/users")
  Future<List<Users>> getUsers();
  @POST("/users")
  @FormUrlEncoded()
  Future<Users> loginPage(@Field("email") emailId, @Field("password") passwordId, @Field("name") name);
  @PUT("/users/{id}")
  Future<Users> updateUser(@Path() String id, @Field("password") passwordId);
  @PUT("/users/{id}")
  Future<Users> updateImage(@Path() String id, @Field("image") imageId);
}
