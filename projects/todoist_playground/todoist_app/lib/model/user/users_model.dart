import 'package:json_annotation/json_annotation.dart';

import '../todos_model.dart';

part 'users_model.g.dart';

@JsonSerializable()
class Users {
  String? email;
  String? name;
  String? password;
  String? image;
  String? id;
  int? duration;
  Todos? todos;

  Users({this.email, this.name, this.password, this.image, this.id, this.duration, this.todos});

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
