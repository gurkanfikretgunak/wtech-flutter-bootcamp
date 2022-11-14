import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import 'package:todoist_app/views/pick_theme_page_view.dart';
import '../core/themes/custom_themes.dart';
import 'welcome_page_view.dart';
import 'package:lottie/lottie.dart';

class WhiteCircularPage extends StatelessWidget {
  const WhiteCircularPage({Key? key, required this.logText}) : super(key: key);
  final String logText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 500,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: AnimatedSplashScreen(
                splash: Lottie.asset("assets/lottie/97443-loading-gray.json"),
                backgroundColor: Colors.white,
                splashIconSize: 100,
                nextScreen: ThemeSwitcher(),
                pageTransitionType: PageTransitionType.topToBottom,
                duration: 1000,
              ),
            ),
          ),
          Center(
            child: Text(
              logText,
              style: CustomTheme.customThemeData().textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
