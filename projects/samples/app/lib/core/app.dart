import 'package:app/core/themes/themes.dart';
import 'package:app/views/home_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      title: 'Flutter Demo',
      theme: CustomTheme.customThemeData(),
    );
  }
}