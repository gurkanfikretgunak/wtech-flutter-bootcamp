import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart';

part 'deneme_api.g.dart'; // #1
@JsonSerializable() // #2
class Dest {
  String? station;
  String? id;
  
  
  Dest({ this.station,this.id });
  factory Dest.fromJson(Map<String, dynamic> json) => _$DestFromJson(json); // #3
  Map<String, dynamic> toJson() => _$DestToJson(this); // #4
}
@RestApi(baseUrl: 'https://6370c24f0399d1995d8356d2.mockapi.io/') // #5
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET("/destinations/{stationName}") // #6
  Future<Dest> getDest();
}