import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTheme{
  
  static ThemeData customThemeData(BuildContext context) =>
      ThemeData.light().copyWith(
        appBarTheme:
            AppBarTheme(color: Theme.of(context).scaffoldBackgroundColor),
        tabBarTheme: TabBarTheme(
            labelColor: CupertinoColors.activeBlue,
            unselectedLabelColor: CupertinoColors.inactiveGray),
      );

}