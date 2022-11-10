import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  final String path = 'assets/splash.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
