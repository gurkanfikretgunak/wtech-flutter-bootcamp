import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFFC14D25),
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        primaryColorDark: const Color(0XFFF8F7FC),
        primaryColorLight: const Color(0XFFDBD9E5),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFFC14D25),
          unselectedItemColor: Colors.black87,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
          headline3: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
          bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          caption: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
          button: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
      );
}
