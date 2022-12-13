import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:the_guardian/pages/home_page.dart';
import 'package:the_guardian/pages/login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          splash: Image.asset('assets/images/logo.png'),
          duration: 3000,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Color(0xFF1A237E),
          nextScreen: LoginPage()),
    );
  }
}
