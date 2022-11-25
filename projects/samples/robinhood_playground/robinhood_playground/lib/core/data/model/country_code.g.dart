// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryCodeModel _$CountryCodeModelFromJson(Map<String, dynamic> json) =>
    CountryCodeModel(
      json['name'] as String?,
      json['dial_code'] as String?,
      json['code'] as String?,
    );

Map<String, dynamic> _$CountryCodeModelToJson(CountryCodeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dial_code': instance.dial_code,
      'code': instance.code,
    };
