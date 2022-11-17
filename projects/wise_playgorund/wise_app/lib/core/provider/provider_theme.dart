import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = ThemeData.light();
  ThemeData get theme => _theme;

  Color _colorAppBar = ThemeData.light().scaffoldBackgroundColor;
  Color get appBarColor => _colorAppBar;

  IconThemeData _appBarButtonColor = const IconThemeData(color: Colors.blue);
  IconThemeData get appBarButtonColor => _appBarButtonColor;

  Color _topLoginTextColor =const Color.fromRGBO(66, 79, 125, 1);
  Color get topLoginTextColor => _topLoginTextColor;

  Color _loginEmailTextColor = Colors.black45;
  Color get loginEmailTextColor => _loginEmailTextColor;

  Color _loginPasswordTextColor = Colors.black45;
  Color get loginPasswordTextColor => _loginPasswordTextColor;

  Color _loginOtherOptionsTextColor =  const Color.fromRGBO(81, 106, 109, 1);
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
      _loginEmailTextColor = Colors.black45;
      _loginPasswordTextColor = Colors.black45;
      _loginOtherOptionsTextColor = const Color.fromRGBO(81, 106, 109, 1);
      _elevationButtonBackgroundColor =
          ThemeData.light().scaffoldBackgroundColor;
      _elevationButtonBorderColor = const Color.fromRGBO(81, 106, 109, 1);
      _elevationButtonAppleColor = Colors.black;
    } else {
      _colorAppBar = ThemeData.dark().scaffoldBackgroundColor;
      _theme = ThemeData.dark();
      _appBarButtonColor = const IconThemeData(color: Colors.white);
      _topLoginTextColor = Colors.blue;
      _loginEmailTextColor = Colors.white;
      _loginPasswordTextColor = Colors.white;
      _loginOtherOptionsTextColor = Colors.white;
      _elevationButtonBackgroundColor =
          ThemeData.dark().scaffoldBackgroundColor;
      _elevationButtonBorderColor = Colors.white;
      _elevationButtonAppleColor = Colors.white;
    }
    notifyListeners();
  }
}
