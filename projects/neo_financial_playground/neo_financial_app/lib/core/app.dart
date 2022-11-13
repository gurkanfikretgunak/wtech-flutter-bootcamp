import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/themes/custom_theme_data.dart';
import 'package:neo_financial_app/views/home/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      title: 'Neo Financial',
      theme: CustomTheme.customThemeData(),
    );
  }
}
