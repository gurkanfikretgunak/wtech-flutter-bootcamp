

import 'package:flutter/cupertino.dart';
import 'package:trainlineplayground/views/register_page.dart';

class TextFormStateProvider with ChangeNotifier {
  late bool isConfirmed = false;
  
  late bool _isOk = false;

  bool get isOk => _isOk;

  set isOk(bool isOk) {
    _isOk = isOk;
  }

  void changeButton(){
    isOk = !isOk;
    notifyListeners();
  }

  void checkConfirm(){
    if(RegisterPageState().emailController.text != "" && RegisterPageState().passwordController.text != "" &&
      RegisterPageState().nameController.text != "" && RegisterPageState().surnameController.text != ""){
        isConfirmed = true;
      }else{
        isConfirmed = false;
      }
    notifyListeners();
  }
}