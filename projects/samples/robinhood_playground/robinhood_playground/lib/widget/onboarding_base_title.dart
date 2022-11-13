import 'package:flutter/material.dart';

class OnBoardingBaseTitle extends StatelessWidget {
  const OnBoardingBaseTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3?.copyWith(
          fontWeight: FontWeight.w400, color: Colors.black, height: 1),
    );
  }
}
