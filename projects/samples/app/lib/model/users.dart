class User {
  int? createdAt;
  String? name;
  String? surname;
  String? avatar;
  int? age;
  bool? isAdmin;
  bool? isDeveloper;
  String? id;

  User({this.createdAt, this.name, this.surname, this.avatar, this.age, this.isAdmin, this.isDeveloper, this.id});

  User.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    name = json['name'];
    surname = json['surname'];
    avatar = json['avatar'];
    age = json['age'];
    isAdmin = json['isAdmin'];
    isDeveloper = json['isDeveloper'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createdAt'] = createdAt;
    data['name'] = name;
    data['surname'] = surname;
    data['avatar'] = avatar;
    data['age'] = age;
    data['isAdmin'] = isAdmin;
    data['isDeveloper'] = isDeveloper;
    data['id'] = id;
    return data;
  }
}
