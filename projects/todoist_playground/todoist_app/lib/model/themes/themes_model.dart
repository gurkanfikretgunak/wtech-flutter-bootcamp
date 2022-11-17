import 'package:flutter/material.dart';

class AppTheme {
  ThemeMode mode;
  String title;
  IconData icon;

  AppTheme({
    required this.mode,
    required this.title,
    required this.icon,
  });
}

List<AppTheme> appThemes = [
  AppTheme(
    mode: ThemeMode.light,
    title: 'Light',
    icon: Icons.brightness_5_rounded,
  ),
  AppTheme(
    mode: ThemeMode.dark,
    title: 'Dark',
    icon: Icons.brightness_2_rounded,
  ),
  AppTheme(
    mode: ThemeMode.system,
    title: 'Auto',
    icon: Icons.brightness_4_rounded,
  ),
];
