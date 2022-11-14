import 'package:json_annotation/json_annotation.dart';

part 'destinations.g.dart';

@JsonSerializable()
class Destinations {
  String? stationName;
  String? id;

  Destinations({this.id,this.stationName});

  factory Destinations.fromJson(Map<String, dynamic> json) => _$DestinationsFromJson(json);
  Map<String, dynamic> toJson() => _$DestinationsToJson(this);
}