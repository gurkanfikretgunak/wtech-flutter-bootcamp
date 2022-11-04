import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) =>
      ThemeData.light().copyWith(
        appBarTheme:
            AppBarTheme(color: Theme.of(context).scaffoldBackgroundColor),
        tabBarTheme: const TabBarTheme(
            labelColor: CupertinoColors.activeBlue,
            unselectedLabelColor: CupertinoColors.inactiveGray),
      );

  final titleTextStyle = const TextStyle(
      letterSpacing: 1,
      fontSize: 20,
      fontWeight: FontWeight.w800,
      color: Colors.black);
}
