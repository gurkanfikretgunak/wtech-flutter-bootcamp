import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_playground/views/home_page/home_page.dart';


class CustomSplashScreen {
  static Widget customSplashScreen() {
    return AnimatedSplashScreen(
      // icondaki taşmayı engeller
      splashIconSize: 250,
      duration: 4000,
      // İcona  animasyonlu gelişi
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.green.shade300,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: const Duration(seconds: 2),

      splash: Column(
        children: [
          ClipOval(
            child: Image.asset(
              "assets/logo.png",
              height: 130,
            ),
          ),
        ],
      ),
      nextScreen: const HomePage(),
    );
  }
}
