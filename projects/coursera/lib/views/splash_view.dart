import 'dart:async';
import 'package:coursera/core/constants/color_constant.dart';
import 'package:coursera/routes/custom_navigator.dart';
import 'package:coursera/widgets/custom_logo.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
        () => CustomNavigator.goToScreen(context, "/SignInView"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.instance.appBlue,
        body: Center(
          child: Logo(
            color: ColorConstant.instance.appWhite,
          ),
        ),
      ),
    );
  }
}
