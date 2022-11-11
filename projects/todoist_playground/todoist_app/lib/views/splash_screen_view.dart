import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import 'package:todoist_app/views/welcome_page_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: _imagePath,
      backgroundColor: Colors.white,
      nextScreen: const WelcomeToApp(),
      pageTransitionType: PageTransitionType.topToBottom,
      duration: 800,
      animationDuration: const Duration(seconds: 3),
    );
  }

  String get _imagePath => 'assets/images/png/todoist_icon.png';
}
