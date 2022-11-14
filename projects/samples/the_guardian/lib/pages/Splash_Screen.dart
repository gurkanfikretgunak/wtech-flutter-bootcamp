import 'package:flutter/material.dart';
import 'package:the_guardian/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 4, 35, 61),
          image: DecorationImage(
            image: AssetImage("assets/images/logo.png"),
          ),
        ),
      ),
    );
  }
}
