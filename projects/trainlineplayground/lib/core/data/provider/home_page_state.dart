

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:trainlineplayground/core/data/api/user_client.dart';

import '../../../views/orjin_home_page.dart';


class HomePageState with ChangeNotifier{
  
  
  late bool _isUserLogIn =false;

  bool get isUserLogIn => _isUserLogIn;

  set isUserLogIn(bool isUserLogIn) {
    _isUserLogIn = isUserLogIn;
  }
  
  void checkAndDisplayUser(){
    
  }

}