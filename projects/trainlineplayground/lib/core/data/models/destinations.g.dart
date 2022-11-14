// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destinations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Destinations _$DestinationsFromJson(Map<String, dynamic> json) => Destinations(
      id: json['id'] as String?,
      stationName: json['stationName'] as String?,
    );

Map<String, dynamic> _$DestinationsToJson(Destinations instance) =>
    <String, dynamic>{
      'stationName': instance.stationName,
      'id': instance.id,
    };
