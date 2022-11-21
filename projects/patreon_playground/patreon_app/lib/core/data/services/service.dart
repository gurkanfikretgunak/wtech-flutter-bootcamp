import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../models/user/user.dart';

part 'service.g.dart';

@RestApi(baseUrl: 'https://636c08167f47ef51e140c438.mockapi.io/api/v1/')
abstract class NetworkService {
  factory NetworkService(Dio dio, {String baseUrl}) = _NetworkService;

  @GET('/users')
  Future<List<User>> getUsers();

  @POST('/users')
  @FormUrlEncoded()
  Future<User> loginUser(@Field('email') email, @Field('password') password);

  @POST('/users')
  Future<User> createUser(@Body() User user);
}
