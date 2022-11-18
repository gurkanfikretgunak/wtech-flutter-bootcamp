class User {
  String? createdAt;
  String? name;
  String? email;
  String? password;
  String? id;

  User({
    this.createdAt,
    this.name,
    this.email,
    this.password,
    this.id,
  });

  User copyWith({
    String? createdAt,
    String? name,
    String? email,
    String? password,
    String? id,
  }) {
    return User(
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt,
      'name': name,
      'email': email,
      'password': password,
      'id': id,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      createdAt: json['createdAt'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      id: json['id'] as String?,
    );
  }
}
