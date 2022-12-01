import 'package:json_annotation/json_annotation.dart';

part 'todos_model.g.dart';

@JsonSerializable()
class Todos {
  String? title;
  String? body;
  String? date;
  int? time;

  Todos({this.date, this.time, this.title, this.body});

  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);
  Map<String, dynamic> toJson() => _$TodosToJson(this);
}
