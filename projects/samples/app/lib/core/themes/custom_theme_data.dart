import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class customThemeData() {
  return ThemeData customThemeData () {
    return ThemeData(
      primarySwatch: Colors.pink,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.purple,
        elevation: 2,
        shape: CircularNotchedRectangle(),
             ) );
  }
}