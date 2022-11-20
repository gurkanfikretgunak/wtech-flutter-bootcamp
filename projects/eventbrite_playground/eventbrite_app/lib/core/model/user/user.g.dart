// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      createdAt: json['createdAt'] as int?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'password': instance.password,
      'id': instance.id,
    };
