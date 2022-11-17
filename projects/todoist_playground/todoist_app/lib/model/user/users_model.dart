import 'package:json_annotation/json_annotation.dart';

part 'users_model.g.dart';

@JsonSerializable()
class Users {
  String? email;
  String? name;
  String? password;
  String? id;
  bool? status;

  Users({this.email, this.name, this.password, this.id, this.status});

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
