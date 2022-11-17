// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      id: json['id'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'id': instance.id,
      'status': instance.status,
    };
