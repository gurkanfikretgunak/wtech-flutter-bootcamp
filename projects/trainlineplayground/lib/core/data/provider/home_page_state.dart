

import 'package:flutter/cupertino.dart';


class HomePageState with ChangeNotifier{
  DateTime selectedDate = DateTime.now();
  
  void displaySelectedDate(DateTime newTime){
    selectedDate = newTime;
    notifyListeners(); // bu şekilde veri her değiştiğinde dinleyecek bi yapı kurduk
  }
  DateTime readDate(){
    return selectedDate;
  }

}