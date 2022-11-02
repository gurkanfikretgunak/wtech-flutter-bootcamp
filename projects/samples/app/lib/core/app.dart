import 'package:app/core/themes/custom_theme_data.dart';
import 'package:flutter/material.dart';
import '../views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      title: 'Letgo Clone',
      theme: CustomTheme.customThemeData(),
    );
  }
}
