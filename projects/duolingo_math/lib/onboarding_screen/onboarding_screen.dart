import 'package:duolingo_math/onboarding_screen/page1.dart';
import 'package:duolingo_math/onboarding_screen/page2.dart';
import 'package:duolingo_math/onboarding_screen/page3.dart';
import 'package:duolingo_math/onboarding_screen/page4.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
        ],
      ),
    );
  }
}
