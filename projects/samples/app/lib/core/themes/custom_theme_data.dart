import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData customThemeData() {
    return ThemeData(
      useMaterial3: false,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.blue,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.redAccent,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12),
      ),
      inputDecorationTheme:
          const InputDecorationTheme(iconColor: Colors.black54),
      iconTheme: const IconThemeData(color: Colors.black54),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.redAccent),
    );
  }
}
