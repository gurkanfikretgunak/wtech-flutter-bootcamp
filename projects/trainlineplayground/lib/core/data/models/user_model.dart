

import 'dart:math';

class UserModel {
  late String username;
  late String userSurname;
  late String userEmail;

  UserModel({required this.username,required this.userSurname,required this.userEmail});

  List<String> putList(UserModel usermodel){
    String name = usermodel.username;
    String surname = usermodel.userSurname;
    String email = usermodel.userEmail;
    
    List<String> modelList = [name,surname,email];
    return modelList;
  }
}