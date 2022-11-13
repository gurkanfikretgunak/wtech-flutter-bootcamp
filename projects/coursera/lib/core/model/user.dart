class User {
  String? name;
  String? password;
  String? id;

  User({this.name, this.password, this.id});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    password = json['password'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['password'] = this.password;
    data['id'] = this.id;
    return data;
  }
}
