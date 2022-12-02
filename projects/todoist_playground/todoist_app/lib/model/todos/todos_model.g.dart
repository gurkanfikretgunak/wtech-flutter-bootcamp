// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todos _$TodosFromJson(Map<String, dynamic> json) => Todos(
      date: json['date'] as String?,
      time: json['time'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$TodosToJson(Todos instance) => <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'date': instance.date,
      'time': instance.time,
    };
