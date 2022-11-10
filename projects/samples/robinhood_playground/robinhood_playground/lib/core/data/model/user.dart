import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel {
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  String? telephoneNumber;
  String? id;

  UserModel(
      {this.email,
      this.password,
      this.firstName,
      this.lastName,
      this.telephoneNumber,
      this.id});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  
}
