import 'package:dunkin_app/view/sign-in.dart';
import 'package:flutter/material.dart';

class HoldScreen extends StatefulWidget {
  const HoldScreen({super.key});

  @override
  State<HoldScreen> createState() => _HoldScreenState();
}

class _HoldScreenState extends State<HoldScreen> {
  @override
 void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        //< this
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 2000),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return Signin();
          },
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Dunkin1.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
