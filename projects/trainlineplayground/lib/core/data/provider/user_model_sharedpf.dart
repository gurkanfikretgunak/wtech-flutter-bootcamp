import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainlineplayground/core/data/models/user_model.dart';
import 'package:trainlineplayground/views/register_page.dart';


class UserModelState with ChangeNotifier{

  

  loadUserName(String username) async {
    SharedPreferences userPreference =await SharedPreferences.getInstance();
    username = userPreference.getString('username')!;
  }
 
  Future<void> locateUsername(String username,String userSurname,String email) async {
    SharedPreferences userPreference =await SharedPreferences.getInstance();
    await userPreference.setString('username',username);
    await userPreference.setString('usersurname', userSurname);
    await userPreference.setString('useremail', email);
    await userPreference.setBool('isUserLoggedIn',true);
  }

  Future<bool?> isUserLoggedIn() async {
    SharedPreferences userPreference =await SharedPreferences.getInstance();
    return userPreference.getBool('isUserLoggedIn');
  }
 
}