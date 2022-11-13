import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';


part 'client_api.g.dart';

@RestApi(baseUrl: "https://6370c24f0399d1995d8356d2.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/tickets")
  Future<List<Tickets>> getTasks();
}

@JsonSerializable()
class Tickets{

  String? trainTime;
  String? trainarriveTime;
  String? standardPrice;
  String? firstClassPrice;
  String? busTime;
  String? busArriveTime;
  String? busPrice;
  String? kalkisYeri;
  String? varisYeri;
  String? id;

  Tickets({this.trainTime,this.trainarriveTime,this.standardPrice,this.firstClassPrice,this.busTime,this.busArriveTime,this.busPrice,this.kalkisYeri,this.varisYeri,this.id});

  factory Tickets.fromJson(Map<String, dynamic> json) => _$TicketsFromJson(json);
  Map<String, dynamic> toJson() => _$TicketsToJson(this);
}