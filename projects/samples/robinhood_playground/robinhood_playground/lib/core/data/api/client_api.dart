import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:robinhood_playground/core/data/model/user.dart';

part 'client_api.g.dart';


@RestApi(baseUrl: "https://636cc87fab4814f2b26e1ba4.mockapi.io")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/users")
  Future<List<UserModel>> getUsers();
}

