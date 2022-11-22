

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';


class HomePageState with ChangeNotifier{
  late String selectedDate;
  
  void displaySelectedDate(String newTime){
    selectedDate = newTime;
    
    notifyListeners(); // bu şekilde veri her değiştiğinde dinleyecek bi yapı kurduk
  }
  void formatString(DateTime pickeddate){
    DateFormat('dd-MM-yyyy').format(pickeddate);
  }

  

}