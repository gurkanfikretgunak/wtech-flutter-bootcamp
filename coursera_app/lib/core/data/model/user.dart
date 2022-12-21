import 'course.dart';
import 'package:hive/hive.dart';
part 'user.g.dart';

@HiveType(typeId: 1)
class User {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? email;
  @HiveField(2)
  String? password;
  @HiveField(3)
  List<Course?>? userCourse;
  @HiveField(4)
  String? id;
  @HiveField(5)
  String? surname;
  @HiveField(6)
  String? country;
  @HiveField(7)
  String? birthYear;
  @HiveField(8)
  String? profileImage;

  User({
    this.name,
    this.email,
    this.password,
    this.userCourse,
    this.id,
    this.surname,
    this.country,
    this.birthYear,
    this.profileImage,
  });

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    if (json['user_course'] != null) {
      userCourse = <Course>[];
      json['user_course'].forEach((v) {
        userCourse!.add(Course.fromJson(v));
      });
    }
    id = json['id'];
    surname = json['surname'];
    country = json['country'];
    birthYear = json['birthYear'];
    profileImage = json['profileImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    if (userCourse != null) {
      data['user_course'] = userCourse!.map((v) => v!.toJson()).toList();
    }
    data['id'] = id;
    data['surname'] = surname;
    data['country'] = country;
    data['birthYear'] = birthYear;
    data['profileImage'] = profileImage;
    return data;
  }
}
