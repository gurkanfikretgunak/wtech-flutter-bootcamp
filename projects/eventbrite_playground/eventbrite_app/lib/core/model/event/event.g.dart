// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      name: json['name'] as String?,
      image: json['image'] as String?,
      isFavorite: json['isFavorite'] as bool?,
      startTime: json['startTime'] as String?,
      price: json['price'] as String?,
      isOnline: json['isOnline'] as bool?,
      organization: json['organization'] as String?,
      desc: json['desc'] as String?,
      organizationImage: json['organizationImage'] as String?,
      location: json['location'] as String?,
      isPaid: json['isPaid'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'isFavorite': instance.isFavorite,
      'startTime': instance.startTime,
      'price': instance.price,
      'isOnline': instance.isOnline,
      'organization': instance.organization,
      'desc': instance.desc,
      'organizationImage': instance.organizationImage,
      'location': instance.location,
      'isPaid': instance.isPaid,
      'id': instance.id,
    };
