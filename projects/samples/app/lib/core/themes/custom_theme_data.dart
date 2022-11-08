import 'package:flutter/material.dart';

class CustomTheme {
  static Color categoryIconColor = Colors.white;
  static ThemeData customThemeData() {
    const Color letgoPrimaryColor = Color(0xffff3e53);

    return ThemeData(
      useMaterial3: false,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.blue,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: Colors.black54,
        selectedItemColor: letgoPrimaryColor,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12),
      ),
      inputDecorationTheme:
          const InputDecorationTheme(iconColor: Colors.black54),
      iconTheme: const IconThemeData(color: Colors.black54),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: letgoPrimaryColor),
    );
  }
}
