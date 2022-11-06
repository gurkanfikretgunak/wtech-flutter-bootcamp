import 'package:flutter/material.dart';

class CustomTheme{
 static ThemeData customThemeData() {
    return ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.pink,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.white, 
        elevation:2, 
        shape: CircularNotchedRectangle(),
        )
    );
  }

} 