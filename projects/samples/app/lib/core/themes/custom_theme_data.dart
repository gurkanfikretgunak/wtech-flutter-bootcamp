import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData(
        drawerTheme: _buildDrawerTheme(),
        appBarTheme: _buildAppBarTheme(),
        bannerTheme: _buildBannerTheme(),
        scaffoldBackgroundColor: Colors.grey.shade200,
        useMaterial3: false,
        primarySwatch: Colors.pink,
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.black,
          elevation: 2,
          shape: CircularNotchedRectangle(),
        ),
      );

  static MaterialBannerThemeData _buildBannerTheme() {
    return const MaterialBannerThemeData(
        elevation: 4,
        backgroundColor: Colors.white70,
        leadingPadding: EdgeInsets.all(10),
        contentTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20));
  }

  static DrawerThemeData _buildDrawerTheme() {
    return DrawerThemeData(
      backgroundColor: Colors.grey.shade200,
    );
  }

  static AppBarTheme _buildAppBarTheme() {
    return AppBarTheme(
      titleTextStyle: const TextStyle(
        fontSize: 20,
        color: Colors.black45,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: true,
      foregroundColor: Colors.black45,
      iconTheme: const IconThemeData(
        color: Colors.black45,
      ),
      shadowColor: Colors.grey.shade100,
      elevation: 0,
      backgroundColor: Colors.grey.shade200,
      actionsIconTheme: const IconThemeData(
        color: Colors.black45,
      ),
    );
  }
}
