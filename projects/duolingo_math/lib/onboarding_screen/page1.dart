import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/1.png", fit: BoxFit.cover),
    );
  }
}
