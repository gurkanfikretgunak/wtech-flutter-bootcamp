import 'package:coursera/core/data/model/course.dart';
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
  List<Course>? userCourse;
  @HiveField(4)
  String? id;

  User({this.name, this.email, this.password, this.userCourse, this.id});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    if (json['user_course'] != null) {
      userCourse = <Course>[];
      json['user_course'].forEach((v) {
        userCourse!.add(new Course.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    if (this.userCourse != null) {
      data['user_course'] = this.userCourse!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}
