import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainlineplayground/core/data/models/user_model.dart';
import 'package:trainlineplayground/views/register_page.dart';


class UserModelState with ChangeNotifier{

  late String choosedType = '';
  void changeType(String newtype){
    choosedType = newtype;
    passangerList.add(choosedType);
    notifyListeners();
  }
  late bool isPassAddded=true;
  late int youngpassanger = 0;
  late int adultpasssanger = 0;
  late int seniorpassanger = 0;
  late int totalPassanger =0;
  late List<String> passangerList = [];
  
  
  void changePassangerAdd(){
    isPassAddded = !isPassAddded;
    notifyListeners();
  }
  void incrementYoung(){
    youngpassanger +=1;
    totalPassanger +=1;
    notifyListeners();
  }
  void decrementYoung(){
    youngpassanger -=1;
    totalPassanger -=1;
    notifyListeners();
  }
  void incrementAdult(){
    adultpasssanger +=1;
    totalPassanger +=1;
    notifyListeners();
  }
  void decrementAdult(){
    adultpasssanger -=1;
    totalPassanger -=1;
    notifyListeners();
  }
  void incrementSenior(){
    seniorpassanger +=1;
    totalPassanger +=1;
    notifyListeners();
  }
  void decrementSenior(){
    seniorpassanger -=1;
    totalPassanger -=1;
    notifyListeners();
  }


  late bool? isuserlogin = false;
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
    isuserlogin =userPreference.getBool('isUserLoggedIn');
    return isuserlogin;
  }

  Future<void> removedata() async{
    SharedPreferences userPreference = await SharedPreferences.getInstance();
    userPreference.remove('username');
    userPreference.remove('usersurname');
    userPreference.remove('useremail');
    userPreference.remove('isUserLoggedIn');
  }
 
}