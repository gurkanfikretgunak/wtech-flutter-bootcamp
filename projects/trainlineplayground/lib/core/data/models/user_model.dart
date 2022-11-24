class UserModel {
  late String userEmail;
  late int isUserLogIn;
  late String id;
  late String userName;

  UserModel({required this.userEmail, required this.isUserLogIn, required this.id,required this.userName});

  UserModel.fromJson(Map<String, dynamic> json) {
    userEmail = json['userEmail'];
    isUserLogIn = json['isUserLogIn'];
    id = json['id'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userEmail'] = this.userEmail;
    data['isUserLogIn'] = this.isUserLogIn;
    data['id'] = this.id;
    data['userName'] = this.userName;
    return data;
  }
}