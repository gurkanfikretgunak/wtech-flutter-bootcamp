import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() => ThemeData(
        inputDecorationTheme: _buildInputDecorationTheme(),
        floatingActionButtonTheme: _buildFloatingActionButtonThemeData(),
        drawerTheme: _buildDrawerTheme(),
        appBarTheme: _buildAppBarTheme(),
        bannerTheme: _buildBannerTheme(),
        scaffoldBackgroundColor: const Color(0xFFEAEBED),
        useMaterial3: false,
        primarySwatch: Colors.grey,
        iconTheme: _buildIconThemeData(),
        bottomAppBarTheme: _buildBottomAppBarTheme(),
      );

  static IconThemeData _buildIconThemeData() {
    return const IconThemeData(
      color: Colors.white,
    );
  }

  static FloatingActionButtonThemeData _buildFloatingActionButtonThemeData() {
    return const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF00252D),
    );
  }

  static BottomAppBarTheme _buildBottomAppBarTheme() {
    return const BottomAppBarTheme(
      color: Color(0xFF00252D),
      elevation: 2,
      shape: CircularNotchedRectangle(),
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      hoverColor: Colors.amber,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      suffixIconColor: Colors.black26,
      fillColor: const Color(0xFFFFFFFF),
      hintStyle: const TextStyle(
        color: Colors.black26,
      ),
    );
  }

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
    return const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.black45,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: true,
      foregroundColor: Colors.black45,
      iconTheme: IconThemeData(
        color: Colors.black45,
      ),
      elevation: 0,
      backgroundColor: Color(0xFFEAEBED),
      actionsIconTheme: IconThemeData(
        color: Colors.black45,
      ),
    );
  }
}
