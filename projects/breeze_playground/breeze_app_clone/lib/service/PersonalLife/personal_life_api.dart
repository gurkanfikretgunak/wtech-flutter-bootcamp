import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'personal_life_api.g.dart';

@RestApi(baseUrl: "https://63862e09875ca3273d52906b.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;
  @GET("/PersonalLife")
  Future<List<PersonalLife>> getPersonalLife();
}

@JsonSerializable()
class PersonalLife {
  final String picture;
  final String title;
  final String text;
  final String time;
  final String count;
  final String id;

  PersonalLife({
    required this.picture,
    required this.title,
    required this.text,
    required this.time,
    required this.count,
    required this.id
  });

  factory PersonalLife.fromJson(Map<String, dynamic> json) =>
      _$PersonalLifeFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalLifeToJson(this);
}