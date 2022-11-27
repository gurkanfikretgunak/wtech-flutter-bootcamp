
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';


part 'ticket_client.g.dart';

@RestApi(baseUrl:'https://6370c24f0399d1995d8356d2.mockapi.io')

abstract class TicketClient {
  factory TicketClient(Dio dio) = _TicketClient;
  @GET('/tickets')
  Future<List<Tickets>> getTickets();

}

@JsonSerializable()
class Tickets{

  String? id;
  String? trainTime;
  String? trainArriveTime;
  String? standardPrice;
  String? firstClassPrice;
  String? busTime;
  String? busArriveTime;
  String? busPrice;
  String? kalkisYeri;
  String? varisYeri;
  
  Tickets({this.id,this.trainTime,this.trainArriveTime,this.standardPrice,this.firstClassPrice,this.busTime,this.busArriveTime,this.busPrice,this.kalkisYeri,this.varisYeri});

  factory Tickets.fromJson(Map<String,dynamic> json) => _$TicketsFromJson(json);
  Map<String,dynamic> toJson() => _$TicketsToJson(this);

}
