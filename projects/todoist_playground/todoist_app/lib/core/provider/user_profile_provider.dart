// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfilePrefProvider extends ChangeNotifier {
  List<String> userProf = [];
  Future<void> setList(List<String> list) async {
    List<String> strList = list.map((i) => i).toList();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList("productList", strList);
    notifyListeners();
  }

  void getList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String>? savedStrList = prefs.getStringList('productList');
    List<String> intProductList = savedStrList!.map((i) => i).toList();
    userProf = intProductList;
    notifyListeners();
  }
}
