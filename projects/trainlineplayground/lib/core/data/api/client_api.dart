
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/tickets.dart';


part 'client_api.g.dart';

@RestApi(baseUrl: "https://6370c24f0399d1995d8356d2.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/tickets")
  Future<List<Tickets>> getTasks();
}

