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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['courseName'] = this.courseName;
    data['courseDescription'] = this.courseDescription;
    data['coursePoint'] = this.coursePoint;
    data['courseImage'] = this.courseImage;
    data['id'] = this.id;
    return data;
  }
}
