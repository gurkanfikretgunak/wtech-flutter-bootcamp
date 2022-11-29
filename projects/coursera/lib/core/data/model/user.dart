class User {
  String? name;
  String? email;
  String? password;
  String? id;

  User({this.name, this.email, this.password, this.id});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['id'] = id;
    return data;
  }
}
