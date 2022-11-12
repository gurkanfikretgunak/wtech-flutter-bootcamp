import 'package:breeze_app_clone/views/payment_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnboardingContinueButton extends StatelessWidget {
  const OnboardingContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Continue"),
      onPressed:() {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => PaymentScreen())));
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