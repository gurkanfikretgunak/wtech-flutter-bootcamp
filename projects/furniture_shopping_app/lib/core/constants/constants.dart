import 'package:flutter/material.dart';

//Singleton design pattern, çalışma zamanında yalnızca bir obje yaratılmasını garanti eden bir tasarım desenidir.
//Birden çok sınıfın aynı intence'ı kullanması gerektiğinde bu yapı kullanılabilir.

class ConstantsClass {
  static final ConstantsClass _instance = ConstantsClass._init();
  static ConstantsClass get instance => _instance;
  ConstantsClass._init();

  //Scaffold
  bool scaffoldNoAppBar = true;

  //AppBar
  bool appBarCenterTitle = true;
  Color appBarTitleColor = const Color(0xFF1c2542);
  Color appBarBackgroundColor = Colors.transparent;
  Color appBarBackIconColor = const Color(0xFFffffff);
  double appBarElevation = 0;
  double appBarTitleFontSize = 26;
  String appBarTitle = "";

  //ElevatedButton
  Color buttonElevatedPrimaryColor = const Color(0xFFFFC542);
  Color buttonElevatedBorderSideColor = Colors.transparent;
  Color buttonElevatedTextColor = const Color(0xFFFFFFFF);
  Color buttonElevatedShadowColor = const Color(0xFFFFC542);
  Color buttonElevatedIconColor = const Color(0xFFFFFFFF);
  Color buttonElevatedIconCircleAvatarBackgroundColor = Colors.white12;
  double buttonElevatedTextFontSize = 15;
  FontWeight buttonElevatedTextFontWeight = FontWeight.bold;
  double buttonElevatedHeight = 0.07;
  double buttonElevatedWidth = 0.3;
  double buttonElevatedIconSize = 28;

  //FloatingActionButton
  Color buttonFloatingActionBackgroundColor = const Color(0xFF424242);
  double buttonFloatingActionElevation = 0;

  //IconButton
  Color buttonIconColor = const Color(0xFFFFC542);
  Color buttonIconSplashColor = Colors.white30;
  Color buttonIconHighlightColor = Colors.white30;
  double buttonIconSize = 18;
  double buttonIconSplashRadius = 20;

  //TextButton
  Color buttonTextPrimaryColor = const Color(0xFFFFFFFF);
  Color buttonTextTextColor = const Color(0xFFFFFFFF);
  double buttonTextFontSize = 14;
  FontWeight buttonTextFontWeight = FontWeight.w500;
  FontStyle buttonTextFontStyle = FontStyle.normal;
}
