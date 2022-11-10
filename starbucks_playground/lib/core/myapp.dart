import 'package:flutter/material.dart';
import 'package:starbucks_playground/views/splash/splash_screen.dart';
import 'custom_themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomThemes.customThemes(),
      home: const Splash(),
      // home: splashScree,
    );
  }
}
