import 'package:breeze_app_clone/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyElevatedButton extends StatelessWidget {
  final String buttonText;
  const MyElevatedButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(buttonText),
      onPressed:() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const OnboardingScreen()));
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 124, 184, 248),
        onPrimary: Color.fromARGB(255, 255, 255, 252),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: Size(300, 50),
      ),
    );
  }
}