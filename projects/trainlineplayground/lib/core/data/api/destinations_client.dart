
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'destinations_client.g.dart';

@RestApi(baseUrl:'https://6370c24f0399d1995d8356d2.mockapi.io')

abstract class DestinationClient {

  factory DestinationClient(Dio dio) = _DestinationClient;
  @GET('/destinations')
  Future<List<Destinations>> getDestinations();
}

@JsonSerializable()
class Destinations {
  String? id;
  String? destinationStation;

  Destinations({this.destinationStation,this.id});
  
  factory Destinations.fromJson(Map<String,dynamic> json) => _$DestinationsFromJson(json);
  Map<String,dynamic> toJson() => _$DestinationsToJson(this);

}