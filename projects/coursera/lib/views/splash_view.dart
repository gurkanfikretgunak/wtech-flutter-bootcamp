import 'dart:async';

import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/views/authentication/sign_in_view.dart';
import 'package:coursera/widgets/logo.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignInView(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ConstantsClass constants = ConstantsClass.instance;
    return SafeArea(
      child: Scaffold(
        backgroundColor: constants.appBlue,
        body: Center(
          child: Logo(
            color: constants.appWhite,
          ),
        ),
      ),
    );
  }
}
