

import 'package:flutter/cupertino.dart';
import 'package:trainlineplayground/constants/register_page_items.dart';
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

 
}