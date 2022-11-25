import 'package:json_annotation/json_annotation.dart';

part 'country_code.g.dart';

@JsonSerializable()
class CountryCodeModel {
  final String? name;
  // ignore: non_constant_identifier_names
  final String? dial_code;
  final String? code;

  CountryCodeModel(this.name, this.dial_code, this.code);

  factory CountryCodeModel.fromJson(Map<String, dynamic> json) =>
      _$CountryCodeModelFromJson(json);
  

  Map<String, dynamic> toJson() => _$CountryCodeModelToJson(this);
}
