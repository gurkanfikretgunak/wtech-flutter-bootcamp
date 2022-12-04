import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:patreon_app/views/error_page.dart';
import 'package:patreon_app/views/login_page.dart';
import 'package:patreon_app/views/navigation_page.dart';

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

  @override
  Widget build(BuildContext context) {
    bool isLog = true;

    if (isLog == true) {
      return const LoginPage();
    } else if (isLog == true) {
      return HomeScreen();
    }
    return const ErrorPage();
  }
}
