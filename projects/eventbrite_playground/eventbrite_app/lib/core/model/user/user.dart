import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'user.g.dart';

@JsonSerializable()
class User with EquatableMixin {
  int? createdAt;
  String? name;
  String? surname;
  String? email;
  String? password;
  String? id;

  User({
    this.createdAt,
    this.name,
    this.surname,
    this.email,
    this.password,
    this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [createdAt, name, surname, email, password, id];

  User copyWith({
    int? createdAt,
    String? name,
    String? surname,
    String? email,
    String? password,
    String? id,
  }) {
    return User(
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      email: email ?? this.email,
      password: password ?? this.password,
      id: id ?? this.id,
    );
  }
}
