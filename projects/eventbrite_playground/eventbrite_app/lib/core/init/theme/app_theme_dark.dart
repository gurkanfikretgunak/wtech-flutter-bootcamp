import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_theme.dart';

class AppThemeDark extends AppTheme {
  static AppThemeDark? _instance;
  static AppThemeDark get instance {
    _instance ??= AppThemeDark._init();
    return _instance!;
  }

  AppThemeDark._init();

  @override
  ThemeData get theme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        backgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Colors.black,
            systemNavigationBarIconBrightness: Brightness.light,
          ),
        ),
        primaryColor: const Color(0xFFC14D25),
        primaryColorDark: const Color(0xFF303030),
        primaryColorLight: Colors.grey,
        iconTheme: const IconThemeData(color: Colors.white),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF121212),
          selectedItemColor: Color(0xFFC14D25),
          unselectedItemColor: Colors.white,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          headline3: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
          caption: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
          button: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
      );
}
