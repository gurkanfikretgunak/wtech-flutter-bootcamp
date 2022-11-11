import 'package:flutter/material.dart';

//Singleton design pattern, çalışma zamanında yalnızca bir obje yaratılmasını garanti eden bir tasarım desenidir.
//Birden çok sınıfın aynı intence'ı kullanması gerektiğinde bu yapı kullanılabilir.

class ConstantsClass {
  static final ConstantsClass _instance = ConstantsClass._init();
  static ConstantsClass get instance => _instance;
  ConstantsClass._init();

  Color appBlack = const Color.fromRGBO(0, 0, 0, 1);
  Color appGreyLight = const Color(0xFFe5e5e5);
  Color appGreyDark = Color.fromARGB(255, 118, 117, 117);
  Color appBlue = const Color(0xFF2354CC);
  Color appWhite = const Color(0xFFFFFFFF);

  //TextFormField
  int textFieldFormMaxLines = 1;
  int textFieldFormMaxLength = 1;
  bool textFieldFormObscureText = false;
  bool textFieldFormFilled = true;
  Color textFieldFormCursorColor = const Color(0xFFFFFFFF);
  Color textFieldFormFilledColor = Colors.transparent;
  Color textFieldFormSuffixIconColor = const Color.fromRGBO(0, 0, 0, 1);
  Color textFieldFormPrefixIconColor = const Color.fromRGBO(0, 0, 0, 1);
  Color textFieldFormBorderSideColor = const Color(0xFFE0E0E0);
  Color textFieldFormTextColor = const Color(0xFFFFFFFF);
  Color textFieldFormHintTextColor = const Color(0xFF909090);
  String textFieldFormHintText = "";
  String textFieldFormLabeText = "";
  Color textFieldFormLabelTextColor = const Color(0xFF909090);
  double textFieldFormLabelTextSize = 14;
  double textFieldFormHintTextSize = 14;

  IconData textFieldFormSuffixIcon = Icons.abc_rounded;
  IconData textFieldFormPrefixIcon = Icons.abc_rounded;
  TextInputType textFieldFormKeyboardType = TextInputType.emailAddress;
  InputBorder textFieldFormBorder = const UnderlineInputBorder();

  //TextButton
  Color buttonTextForegroundColor = const Color(0xFFFFFFFF);
  Color buttonTextTextColor = const Color(0xFF2354CC);
  double buttonTextFontSize = 14;
  FontWeight buttonTextFontWeight = FontWeight.w400;
  FontStyle buttonTextFontStyle = FontStyle.normal;

  //Text
  Color textColor = const Color(0xFF424242);

  //ElevatedButton
  Color buttonElevatedBackgroundColor = const Color(0xFF2354CC);
  BorderRadiusGeometry buttonElevatedBorderRadius = BorderRadius.circular(5);
  Color buttonElevatedBorderSideColor = Colors.transparent;
  Color buttonElevatedTextColor = const Color(0xFFFFFFFF);
  Color buttonElevatedShadowColor = const Color(0xFF2354CC);
  Color buttonElevatedIconColor = const Color(0xFF000000);
  Color buttonElevatedIconCircleAvatarBackgroundColor = Colors.white12;
  double buttonElevatedTextFontSize = 15;
  FontWeight buttonElevatedTextFontWeight = FontWeight.bold;
  double buttonElevatedHeight = 0.06;
  double buttonElevatedWidth = 1;
  double buttonElevatedIconSize = 28;
  Color buttonElevatediconCircleAvatarBackgroundColor = Colors.transparent;

  //IconButton
  Color buttonIconColor = const Color(0xFF2354CC);
  Color buttonIconSplashColor = Colors.white30;
  Color buttonIconHighlightColor = Colors.white30;
  double buttonIconSize = 18;
  double buttonIconSplashRadius = 20;
}
