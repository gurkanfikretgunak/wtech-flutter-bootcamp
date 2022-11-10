import 'package:flutter/material.dart';
import 'package:starbucks_playground/widgets/splash/custom_splash_screen.dart';

import '../home_page/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // 5s over, navigate to a new page
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomSplashScreen.customSplashScreen(),
    );
  }
}
