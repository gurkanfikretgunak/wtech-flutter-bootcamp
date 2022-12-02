import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = ThemeData.light();
  ThemeData get theme => _theme;

  Color _colorAppBar = ThemeData.light().scaffoldBackgroundColor;
  Color get appBarColor => _colorAppBar;

  Color _homePageBackgroundColor=const Color.fromRGBO(46, 67, 105, 1);
  Color get homePageBackgroundColor=>_homePageBackgroundColor;

  Color _homePageCardBackgroundColor= Colors.white;
  Color get homePageCardBackgroundColor=>_homePageCardBackgroundColor;

  Color _homePageUnitColor=Colors.grey.shade300;
  Color get homePageUnitColor=>_homePageUnitColor;

  IconThemeData _appBarButtonColor = const IconThemeData(color: Colors.blue);
  IconThemeData get appBarButtonColor => _appBarButtonColor;

  Color _topLoginTextColor = const Color.fromRGBO(66, 79, 125, 1);
  Color get topLoginTextColor => _topLoginTextColor;

  Color _registerAccountTypeContentTextColor = Colors.grey.shade600;
  Color get registerAccountTypeContentTextColor =>
      _registerAccountTypeContentTextColor;

  Color _homePageTitleTextColor = Colors.grey.shade600;
  Color get homePageTitleTextColor =>
      _homePageTitleTextColor;

  Color _bottomNavItemUnselectedColor=const Color.fromRGBO(46, 67, 105, 1);
  Color get bottomNavItemUnselectedColor=>_bottomNavItemUnselectedColor;

  Color _homePageContentTextColor = Colors.grey.shade600;
  Color get homePageContentTextColor =>
      _homePageContentTextColor;

  Color _loginEmailTextColor = Colors.black45;
  Color get loginEmailTextColor => _loginEmailTextColor;

  Color _loginPasswordTextColor = Colors.black45;
  Color get loginPasswordTextColor => _loginPasswordTextColor;

  Color _loginOtherOptionsTextColor = const Color.fromRGBO(81, 106, 109, 1);
  Color get loginOtherOptionsTextColor => _loginOtherOptionsTextColor;

  Color _elevationButtonBackgroundColor =
      ThemeData.light().scaffoldBackgroundColor;
  Color get elevationButtonBackgroundColor => _elevationButtonBackgroundColor;

  Color _elevationButtonBorderColor = const Color.fromRGBO(81, 106, 109, 1);
  Color get elevationButtonBorderColor => _elevationButtonBorderColor;

  Color _elevationButtonAppleColor = Colors.black;
  Color get elevationButtonAppleColor => _elevationButtonAppleColor;

  void changeTheme() {
    final isDark = _theme == ThemeData.dark();
    if (isDark) {
      _colorAppBar = ThemeData.light().scaffoldBackgroundColor;
      _theme = ThemeData.light();
      _appBarButtonColor = const IconThemeData(color: Colors.blue);
      _topLoginTextColor = const Color.fromRGBO(66, 79, 125, 1);
      _registerAccountTypeContentTextColor = Colors.grey.shade600;
      _loginEmailTextColor = Colors.black45;
      _loginPasswordTextColor = Colors.black45;
      _loginOtherOptionsTextColor = const Color.fromRGBO(81, 106, 109, 1);
      _elevationButtonBackgroundColor =
          ThemeData.light().scaffoldBackgroundColor;
      _elevationButtonBorderColor = const Color.fromRGBO(81, 106, 109, 1);
      _elevationButtonAppleColor = Colors.black;
      _homePageTitleTextColor=const Color.fromRGBO(46, 67, 105, 1);
      _homePageBackgroundColor=const Color.fromRGBO(46, 67, 105, 1);
      _homePageCardBackgroundColor=Colors.white;
      _homePageUnitColor=Colors.grey.shade300;
      _homePageContentTextColor=Colors.grey.shade600;
      _bottomNavItemUnselectedColor=const Color.fromRGBO(46, 67, 105, 1);
    } else {
      _colorAppBar = ThemeData.dark().scaffoldBackgroundColor;
      _homePageCardBackgroundColor=const Color.fromRGBO(33, 33, 33, 1.001);
      _theme = ThemeData.dark();
      _appBarButtonColor = const IconThemeData(color: Colors.white);
      _topLoginTextColor = Colors.blue;
      _loginEmailTextColor = Colors.white;
      _registerAccountTypeContentTextColor = Colors.white;
      _loginPasswordTextColor = Colors.white;
      _loginOtherOptionsTextColor = Colors.white;
      _elevationButtonBackgroundColor =
          ThemeData.dark().scaffoldBackgroundColor;
      _elevationButtonBorderColor = Colors.white;
      _elevationButtonAppleColor = Colors.white;
      _homePageTitleTextColor=Colors.white;
      _homePageBackgroundColor=Colors.black;
      _homePageUnitColor=Colors.grey.shade600;
      _homePageContentTextColor=Colors.grey.shade500;
      _bottomNavItemUnselectedColor=Colors.white;
    }
    notifyListeners();
  }
}
