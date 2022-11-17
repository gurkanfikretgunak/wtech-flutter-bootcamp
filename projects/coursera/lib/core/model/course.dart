class Course {
  String? courseName;
  String? courseDescription;
  String? coursePoint;
  String? courseImage;
  String? id;

  Course(
      {this.courseName,
      this.courseDescription,
      this.coursePoint,
      this.courseImage,
      this.id});

  Course.fromJson(Map<String, dynamic> json) {
    courseName = json['courseName'];
    courseDescription = json['courseDescription'];
    coursePoint = json['coursePoint'];
    courseImage = json['courseImage'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['courseName'] = courseName;
    data['courseDescription'] = courseDescription;
    data['coursePoint'] = coursePoint;
    data['courseImage'] = courseImage;
    data['id'] = id;
    return data;
  }
}
