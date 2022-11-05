import 'package:flutter/material.dart';

class RegisterHeaderWidget extends StatelessWidget {
  const RegisterHeaderWidget({
    Key? key,
    required this.fontColor,
  }) : super(key: key);

  final int fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign Up",
      style: TextStyle(
        
        fontSize: 31,
        color: Color(fontColor),
        fontStyle: FontStyle.normal
      ),                
      );
  }
}
final int fontColor = 0xFF02A28F;