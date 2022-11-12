import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/users_model.dart';
part 'data_service.g.dart';

@RestApi(baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io")
abstract class DataService {
  factory DataService(Dio dio, {String baseUrl}) = _DataService;

  @GET("/users")
  Future<List<Users>> getUsers();
}
