import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import '../core/themes/custom_themes.dart';
import 'welcome_page_view.dart';

class WhiteCircularPage extends StatelessWidget {
  const WhiteCircularPage({Key? key, required this.logText}) : super(key: key);
  final String logText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          AnimatedSplashScreen(
            splash: const CircularProgressIndicator(color: Colors.grey, strokeWidth: 10),
            backgroundColor: Colors.white,
            splashIconSize: 100,
            nextScreen: const WelcomeToApp(),
            pageTransitionType: PageTransitionType.topToBottom,
            duration: 800,
            animationDuration: const Duration(seconds: 3),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              logText,
              style: CustomTheme.customThemeData().textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          )
        ],
      )),
    );
  }
}
