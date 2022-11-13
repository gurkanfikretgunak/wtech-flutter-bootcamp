import 'package:flutter/material.dart';

class IntroductionPageVM extends ChangeNotifier {
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
