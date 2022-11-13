import 'package:flutter/material.dart';

class LoginSignupButton extends StatelessWidget {
  const LoginSignupButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor,
      required this.foregroundColor});
  final String text;
  final void Function() onPressed;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: backgroundColor,
            side: const BorderSide(color: Colors.black),
            foregroundColor: foregroundColor),
        child: Text(text),
      ),
    );
  }
}

enum LoginSignupColor { black, white }

extension LoginSignupColorExtension on LoginSignupColor {
  Color getValue() {
    switch (this) {
      case LoginSignupColor.black:
        return Colors.black;

      case LoginSignupColor.white:
        return Colors.white;
    }
  }
}

enum LoginSignupName { login, signup }

extension LoginSignupNameExtension on LoginSignupName {
  String getName() {
    switch (this) {
      case LoginSignupName.login:
        return 'Log in';
      case LoginSignupName.signup:
        return 'Sign up';
    }
  }
}
