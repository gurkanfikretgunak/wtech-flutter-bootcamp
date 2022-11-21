import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'user.g.dart';

@JsonSerializable()
class User with EquatableMixin {
  String? name;
  String? email;
  String? password;

  String? id;

  User({
    this.name,
    this.email,
    this.password,
    this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [name, email, password, id];

  User copyWith({
    String? name,
    String? email,
    String? password,
    Object? avatar,
    String? id,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      id: id ?? this.id,
    );
  }
}
