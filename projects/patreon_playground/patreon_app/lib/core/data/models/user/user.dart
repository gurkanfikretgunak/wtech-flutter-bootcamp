import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'user.g.dart';

@JsonSerializable()
class User with EquatableMixin {
  String? name;
  String? email;
  String? password;
  String? id;
  String? info;
  String? image;

  User({this.name, this.email, this.password, this.id, this.info, this.image});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [name, email, password, id, info, image];

  User copyWith({
    String? name,
    String? email,
    String? password,
    String? id,
    String? info,
    String? image,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      id: id ?? this.id,
      info: info ?? this.info,
      image: image ?? this.image,
    );
  }
}
