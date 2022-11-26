import 'package:flutter/widgets.dart';

class CountryCodeProvider extends ChangeNotifier {
  String currentCountryCode = '+1';
  int selectedIndex =0;
  getCountryCode(String code, int index) {
    currentCountryCode = code;
    selectedIndex = index;
    notifyListeners();
  }

  
}
