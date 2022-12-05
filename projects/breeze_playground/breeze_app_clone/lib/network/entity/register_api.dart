import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'register_api.g.dart';

@RestApi(baseUrl: "https://63862e09875ca3273d52906b.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;
  @GET("/users")
  Future<List<Register>> getUsers();
}

@JsonSerializable()
class Register {
  Register({
    required this.name,
    required this.surname,
    required this.mail,
    required this.userName,
    required this.password,
    required this.id,
  });

  String name;
  String surname;
  String mail;
  String userName;
  String password;
  String id;

  factory Register.fromJson(Map<String, dynamic> json) =>
      _$RegisterFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterToJson(this);
}
