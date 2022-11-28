// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      image: json['image'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'image': instance.image,
      'id': instance.id,
    };
