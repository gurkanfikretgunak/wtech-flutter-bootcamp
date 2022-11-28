import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainlineplayground/core/data/models/user_model.dart';
import 'package:trainlineplayground/views/register_page.dart';


class UserModelState with ChangeNotifier{
  
  
  late List<String> userInfoList;
  late SharedPreferences userpreference;

  // void writeDataToSp(){
  //   userInfoList = readSharedPrefs(userInfoList);
  //   print(userInfoList);
  //   notifyListeners();
  // }

  Future<void> create(SharedPreferences userpref) async{
    userpref = await SharedPreferences.getInstance();
  }

  Future<void> setSharedPrefs(List<String> userinfo,SharedPreferences userpref) async{
    userpref = await SharedPreferences.getInstance();
    userpref.setStringList('userinfo',userinfo);
  }

  

  Future<Object> readSharedPrefs() async {
    userpreference =await SharedPreferences.getInstance();
    return userpreference.getStringList('userinfo') ?? 'none';
  }
}