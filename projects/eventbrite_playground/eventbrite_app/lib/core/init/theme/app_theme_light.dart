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
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.grey,
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Color(0xFF0000BD), width: 2),
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
          headline3: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
          headline4: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey),
          headline5: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
          headline6: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
          bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          bodyText2: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFFC14D25)),
          subtitle1: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
          caption: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
          button: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
      );
}
