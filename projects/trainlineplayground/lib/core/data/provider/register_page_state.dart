

import 'package:flutter/cupertino.dart';
import 'package:trainlineplayground/views/register_page.dart';

class TextFormStateProvider with ChangeNotifier {
  late bool isConfirmed = false;
  
  late bool _isAccepted = false;

  bool get isAccepted => _isAccepted;

  set isAccepted(bool isAccepted) {
    _isAccepted = isAccepted;
  }

  void changeButton(){
    _isAccepted = !_isAccepted;
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