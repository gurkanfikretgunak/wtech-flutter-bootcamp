// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tickets _$TicketsFromJson(Map<String, dynamic> json) => Tickets(
      id: json['id'] as String?,
      trainTime: json['trainTime'] as String?,
      trainarriveTime: json['trainarriveTime'] as String?,
      standardPrice: json['standardPrice'] as String?,
      firstClassPrice: json['firstClassPrice'] as String?,
      busTime: json['busTime'] as String?,
      busArriveTime: json['busArriveTime'] as String?,
      busPrice: json['busPrice'] as String?,
      kalkisYeri: json['kalkisYeri'] as String?,
      varisYeri: json['varisYeri'] as String?,
    );

Map<String, dynamic> _$TicketsToJson(Tickets instance) => <String, dynamic>{
      'id': instance.id,
      'trainTime': instance.trainTime,
      'trainarriveTime': instance.trainarriveTime,
      'standardPrice': instance.standardPrice,
      'firstClassPrice': instance.firstClassPrice,
      'busTime': instance.busTime,
      'busArriveTime': instance.busArriveTime,
      'busPrice': instance.busPrice,
      'kalkisYeri': instance.kalkisYeri,
      'varisYeri': instance.varisYeri,
    };
