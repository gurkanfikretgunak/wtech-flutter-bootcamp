import 'package:duolingo_math/pages/onboarding_pages/page1.dart';
import 'package:duolingo_math/pages/onboarding_pages/page2.dart';
import 'package:duolingo_math/pages/onboarding_pages/page3.dart';
import 'package:duolingo_math/pages/onboarding_pages/page4.dart';
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
