// To parse this JSON data, do
//
//     final course = courseFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';
part 'course.g.dart';

Course courseFromJson(String str) => Course.fromJson(json.decode(str));

String courseToJson(Course data) => json.encode(data.toJson());

@HiveType(typeId: 2)
class Course {
  Course({
    this.createdAt,
    this.name,
    this.avatar,
    this.about,
    this.syllabus,
    this.courseName,
    this.courseDescription,
    this.coursePoint,
    this.courseImage,
    this.id,
  });

  @HiveField(0)
  DateTime? createdAt;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? avatar;
  @HiveField(3)
  String? about;
  @HiveField(4)
  List<Syllabus>? syllabus;
  @HiveField(5)
  String? courseName;
  @HiveField(6)
  String? courseDescription;
  @HiveField(7)
  String? coursePoint;
  @HiveField(8)
  String? courseImage;
  @HiveField(9)
  String? id;

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        about: json["about"],
        syllabus: List<Syllabus>.from(
            json["syllabus"].map((x) => Syllabus.fromJson(x))),
        courseName: json["courseName"],
        courseDescription: json["courseDescription"],
        coursePoint: json["coursePoint"],
        courseImage: json["courseImage"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt!.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "about": about,
        "syllabus": List<dynamic>.from(syllabus!.map((x) => x.toJson())),
        "courseName": courseName,
        "courseDescription": courseDescription,
        "coursePoint": coursePoint,
        "courseImage": courseImage,
        "id": id,
      };
}

@HiveType(typeId: 3)
class Syllabus {
  Syllabus({
    this.week1,
    this.week2,
  });
  @HiveField(0)
  List<String>? week1;
  @HiveField(1)
  List<String>? week2;

  factory Syllabus.fromJson(Map<String, dynamic> json) => Syllabus(
        week1: json["week1"] == null
            ? null
            : List<String>.from(json["week1"].map((x) => x)),
        week2: json["week2"] == null
            ? null
            : List<String>.from(json["week2"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "week1":
            week1 == null ? null : List<dynamic>.from(week1!.map((x) => x)),
        "week2":
            week2 == null ? null : List<dynamic>.from(week2!.map((x) => x)),
      };
}
