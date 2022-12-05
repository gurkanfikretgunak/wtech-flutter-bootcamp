import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'inner_beauty_api.g.dart';

@RestApi(baseUrl: "https://63862e09875ca3273d52906b.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;
  @GET("/InnerBeauty")
  Future<List<InnerBeauty>> getInnerBeauty();
}

@JsonSerializable()
class InnerBeauty {
  final String picture;
  final String title;
  final String text;
  final String time;
  final String count;
  final String id;

  InnerBeauty({
    required this.picture,
    required this.title,
    required this.text,
    required this.time,
    required this.count,
    required this.id
  });

  factory InnerBeauty.fromJson(Map<String, dynamic> json) =>
      _$InnerBeautyFromJson(json);
  Map<String, dynamic> toJson() => _$InnerBeautyToJson(this);
}