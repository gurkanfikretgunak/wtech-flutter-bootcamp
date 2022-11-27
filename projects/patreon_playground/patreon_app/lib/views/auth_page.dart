import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:patreon_app/core/data/models/user/user.dart';
import 'package:patreon_app/core/data/services/service.dart';
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
    // Dio dio = Dio();
    // return FutureBuilder<User?>(
    //     future: NetworkService(dio).getUsers(),
    //     builder: (context, AsyncSnapshot<User?> snapshot) {
    //       if (snapshot.connectionState == ConnectionState.active) {
    //         return snapshot.hasData ? HomeScreen() : const LoginPage();
    //       }
    //       return const ErrorPage();
    //     });
    bool isLog = true;

    if (isLog == true) {
      return const LoginPage();
    } else if (isLog == true) {
      return HomeScreen();
    }
    return const ErrorPage();
  }
}
