import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'most_popular_api.g.dart';

@RestApi(baseUrl: "https://63862e09875ca3273d52906b.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;
  @GET("/MostPopular")
  Future<List<MostPopular>> getMostPopular();
}

@JsonSerializable()
class MostPopular {
  String picture;
  String title;
  String text;
  String time;
  String count;
  String id;

  MostPopular({
    required this.picture,
    required this.title,
    required this.text,
    required this.time,
    required this.count,
    required this.id,
  });

  factory MostPopular.fromJson(Map<String, dynamic> json) =>
      _$MostPopularFromJson(json);
  Map<String, dynamic> toJson() => _$MostPopularToJson(this);
}