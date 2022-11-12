import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:patreon_app/views/error_page.dart';
import 'package:patreon_app/views/home_page.dart';
import 'package:patreon_app/views/login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => {FlutterNativeSplash.remove()});
  }

  //final AsyncSnapshot<PomotodoUser?> snapShot;
  @override
  Widget build(BuildContext context) {
    bool isLog = true;
    // if (snapShot.connectionState == ConnectionState.active) {
    //   return snapShot.hasData ? TaskView() : const LoginPage();
    // }
    if (isLog == true) {
      return const LoginPage();
    } else if (isLog == true) {
      return const MyHomePage();
    }
    return const ErrorPage();
  }
}
