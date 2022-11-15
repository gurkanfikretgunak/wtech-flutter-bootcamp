import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'destination_api.g.dart';

@RestApi(baseUrl: "https://6370c24f0399d1995d8356d2.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/destinations")
  Future<List<Dest>> getDest();
}

@JsonSerializable()
class Dest {
  String? id;
  String? stationName;

  Dest({this.id,this.stationName});

  factory Dest.fromJson(Map<String, dynamic> json) => _$DestFromJson(json);
  Map<String, dynamic> toJson() => _$DestToJson(this);
}