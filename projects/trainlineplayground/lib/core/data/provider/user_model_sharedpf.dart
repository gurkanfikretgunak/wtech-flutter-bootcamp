import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainlineplayground/core/data/models/user_model.dart';
import 'package:trainlineplayground/views/register_page.dart';


class UserModelState with ChangeNotifier{
  
  
  late bool _isUserLogIn;
  
  
  
  bool get isUserLogIn => _isUserLogIn;

  set isUserLogIn(bool isUserLogIn) {
    _isUserLogIn = isUserLogIn;
  }

  

  void loadUserInformation() async {
    SharedPreferences userPreference =await SharedPreferences.getInstance();
    late String? userName = userPreference.getString('username');
    late String? userEmail = userPreference.getString('usersurname');
    late String? userSurname = userPreference.getString('useremail');
  }
 
  Future<void> locateUsername(String username,String userSurname,String email) async {
    SharedPreferences userPreference =await SharedPreferences.getInstance();
    await userPreference.setString('username',username);
    await userPreference.setString('usersurname', userSurname);
    await userPreference.setString('useremail', email);
  }
 
}