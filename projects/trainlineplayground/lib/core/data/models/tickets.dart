import 'package:json_annotation/json_annotation.dart';

part 'tickets.g.dart';

@JsonSerializable() //field
class Tickets {
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