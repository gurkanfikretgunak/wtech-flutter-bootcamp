import 'package:flutter/material.dart';
import 'package:todoist_app/core/themes/custom_themes.dart';
import 'package:todoist_app/views/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme.customThemeData(),
      home: const SplashScreen(),
    );
  }
}
