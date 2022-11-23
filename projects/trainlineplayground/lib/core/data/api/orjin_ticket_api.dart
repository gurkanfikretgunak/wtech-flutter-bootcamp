import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:trainlineplayground/core/data/models/tickets.dart';




part 'orjin_ticket_api.g.dart';

@RestApi(baseUrl:'https://6370c24f0399d1995d8356d2.mockapi.io/')
abstract class OrjinTicketApi{
  factory OrjinTicketApi(Dio dio,{String baseUrl}) = _OrjinTicketApi;

  @GET("/tickets")
  Future<List<Tickets>> getTickets();
  
}

@JsonSerializable()
class Tickets{
  String? id;
  String? trainTime;
  String? trainarriveTime;
  String? standardPrice;
  String? firstClassPrice;
  String? busTime;
  String? busArriveTime;
  String? busPrice;
  String? kalkisYeri;
  String? varisYeri;
  

  Tickets({this.busArriveTime,this.busPrice,this.busTime,this.firstClassPrice,this.id,this.kalkisYeri,this.standardPrice,this.trainTime,this.trainarriveTime,this.varisYeri});

  factory Tickets.fromJson(Map<String, dynamic> json) => _$TicketsFromJson(json);
  Map<String,dynamic> toJson() => _$TicketsToJson(this);
}