import 'package:flutter/material.dart';
import 'package:starbucks_playground/widgets/splash/custom_splash_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: CustomSplashScreen.customSplashScreen(),
    );
  }
}
