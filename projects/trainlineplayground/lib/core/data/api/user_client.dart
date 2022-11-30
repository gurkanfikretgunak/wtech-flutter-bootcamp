import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/user_model.dart';

part 'user_client.g.dart';

@RestApi(baseUrl:'https://6370c24f0399d1995d8356d2.mockapi.io')

abstract class UserClient {

  factory UserClient(Dio dio) = _UserClient;
  @GET('/users/{userName}')
  Future<Users> getUserName(@Path("userName") String userName);
  @GET('/users/{userSurname}')
  Future<Users> getUserSurname(@Path('userSurname') String userSurname);
  @GET('/users/{userEmail}') 
  Future<Users>getUserEmail(@Path('userEmail') String userEmail);

  // @POST("/users")
  // Future<List<Users>> createUser(@Body() Users user);
  @POST('/users') 
  @FormUrlEncoded()
  Future<Users> registerUser(@Field("userEmail") userEmail,@Field("userName") userName,@Field("userSurname") userSurname,@Field("userPassword") userPassword);
  

}





