

import 'package:flutter/cupertino.dart';
import 'package:trainlineplayground/views/register_page.dart';

class TextFormStateProvider with ChangeNotifier {
  late bool isConfirmed = false;
  
  bool get _isConfirmed => isConfirmed;

  late List<TextEditingController> _mycontrollers;

  List<TextEditingController> get mycontrollers => RegisterPageState().mycontrollers;

  set mycontrollers(List<TextEditingController> mycontrollers) {
    _mycontrollers = mycontrollers;
  }

  

  void changeConfirm(){
    isConfirmed = !isConfirmed;
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