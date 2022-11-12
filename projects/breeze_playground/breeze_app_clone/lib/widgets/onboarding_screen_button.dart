import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton();
  //final VoidCallback callback;
  //const OnboardingButton(this.callback);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Next"),
      onPressed: () {

      },//callback
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