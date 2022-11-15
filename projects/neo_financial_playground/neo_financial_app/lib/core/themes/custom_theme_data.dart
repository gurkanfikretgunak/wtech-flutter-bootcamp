import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static Color categoryIconColor = Colors.white;
  static ThemeData customThemeData() {
    return ThemeData(
      useMaterial3: false,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12),
      ),
      textTheme: TextTheme(
          // To Splash Screen
          displayLarge: GoogleFonts.ebGaramond(
              fontSize: 90, color: Colors.white, fontWeight: FontWeight.bold)),
      iconTheme: const IconThemeData(color: Colors.black54),
    );
  }
}
