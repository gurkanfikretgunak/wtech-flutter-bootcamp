import 'package:dio/dio.dart';
import 'package:eventbrite_app/core/model/user.dart';
import 'package:retrofit/retrofit.dart';

part 'network_service.g.dart';

@RestApi(baseUrl: 'https://636e5c82b567eed48adb2eec.mockapi.io/api/v1/')
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
