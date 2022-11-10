import 'package:dunkin_app/view/onboard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnBoard()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image(image: AssetImage("assets/images/splashscreen.png")),
      ),
    );
  }
}
