import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeData _theme=ThemeData.dark();
  ThemeData get theme=>_theme;

  Color _colorAppBar=ThemeData.dark().scaffoldBackgroundColor;
  Color get appBarColor=>_colorAppBar;

  IconThemeData _appBarButtonColor=const IconThemeData(color:Colors.white);
  IconThemeData get appBarButtonColor=>_appBarButtonColor;


  void changeTheme(){
    final isDark=_theme==ThemeData.dark();
    if(isDark){
      _colorAppBar=ThemeData.light().scaffoldBackgroundColor;
      _theme=ThemeData.light();
      _appBarButtonColor=const IconThemeData(color:Colors.blue);
    }else{
      _colorAppBar=ThemeData.dark().scaffoldBackgroundColor;
      _theme=ThemeData.dark();
      _appBarButtonColor=const IconThemeData(color:Colors.white);
    }
    notifyListeners();
  }
}