import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/user_model.dart';

part 'user_client.g.dart';

@RestApi(baseUrl:'https://6370c24f0399d1995d8356d2.mockapi.io')

abstract class UserClient {

  factory UserClient(Dio dio) = _UserClient;
  @GET('/users')
  Future<List<Users>> getUser();
  
  // @POST("/users")
  // Future<List<Users>> createUser(@Body() Users user);
  @POST('/users') 
  @FormUrlEncoded()
  Future<Users> registerUser(@Field("userEmail") userEmail,@Field("userName") userName,@Field("userSurname") userSurname,@Field("userPassword") userPassword);
  

}
@JsonSerializable()
class Users {

  String? id;
  String? userName;
  String? userSurname;
  String? userEmail;
  String? userPassword;

  Users({this.id,this.userEmail, this.userName,this.userPassword,this.userSurname});

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}




