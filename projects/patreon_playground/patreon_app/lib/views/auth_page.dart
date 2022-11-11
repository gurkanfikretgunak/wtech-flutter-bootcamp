import 'dart:math';

import 'package:flutter/material.dart';
import 'package:patreon_app/views/error_page.dart';
import 'package:patreon_app/views/home_page.dart';
import 'package:patreon_app/views/login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  //final AsyncSnapshot<PomotodoUser?> snapShot;
  @override
  Widget build(BuildContext context) {
    bool isLog = false;
    // if (snapShot.connectionState == ConnectionState.active) {
    //   return snapShot.hasData ? TaskView() : const LoginPage();
    // }
    if (isLog == false) {
      return const LoginPage();
    } else if (isLog == true) {
      return const MyHomePage();
    }
    return const ErrorPage();
  }
}
