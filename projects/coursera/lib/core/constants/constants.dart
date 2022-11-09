import 'package:flutter/material.dart';

//Singleton design pattern, çalışma zamanında yalnızca bir obje yaratılmasını garanti eden bir tasarım desenidir.
//Birden çok sınıfın aynı intence'ı kullanması gerektiğinde bu yapı kullanılabilir.

class ConstantsClass {
  static final ConstantsClass _instance = ConstantsClass._init();
  static ConstantsClass get instance => _instance;
  ConstantsClass._init();

  Color appBlack = const Color.fromRGBO(0, 0, 0, 1);
  Color appGrey = const Color(0xFF606060);
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
  Color buttonTextTextColor = const Color.fromRGBO(0, 0, 0, 1);
  double buttonTextFontSize = 14;
  FontWeight buttonTextFontWeight = FontWeight.w300;
  FontStyle buttonTextFontStyle = FontStyle.normal;
}
