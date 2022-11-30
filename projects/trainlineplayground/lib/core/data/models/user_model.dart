import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class Users {

  String? id;
  String? userName;
  String? userSurname;
  String? userEmail;
  String? userPassword;

  Users({this.id,this.userEmail,this.userName,this.userPassword,this.userSurname});

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}