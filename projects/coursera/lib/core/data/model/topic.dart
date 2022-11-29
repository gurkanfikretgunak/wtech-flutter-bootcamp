class Topic {
  String? topicName;
  List<String>? course;
  String? id;

  Topic({this.topicName, this.course, this.id});

  Topic.fromJson(Map<String, dynamic> json) {
    topicName = json['topicName'];
    course = json['course'].cast<String>();
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['topicName'] = topicName;
    data['course'] = course;
    data['id'] = id;
    return data;
  }
}
