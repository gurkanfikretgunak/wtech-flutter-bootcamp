import 'package:flutter/material.dart';
import 'package:masterclass_app/pages/home_page/home_page.dart';
import 'package:masterclass_app/pages/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Masterclass',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => SplashPage(),
        '/home': (_) => HomePage(),
      },
    );
  }
}
