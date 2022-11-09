import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';

import '../widgets/bottom_app_bar_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(_imagebackgroundPath), fit: BoxFit.cover),
      ),
      child: Center(
        child: AnimatedSplashScreen(
          backgroundColor: Colors.transparent,
          splash: _imageTextPath,
          nextScreen: const CustomBottomAppBar(),
          pageTransitionType: PageTransitionType.topToBottom,
          duration: 800,
          animationDuration: const Duration(seconds: 3),
        ),
      ),
    );
  }

  String get _imagebackgroundPath => 'assets/images/png/shopplants.png';
  String get _imageTextPath => 'assets/images/png/plant_Shop.png';
}
