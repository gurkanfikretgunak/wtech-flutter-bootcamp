import 'package:flutter/material.dart';

class OnboardingDimmedText extends StatelessWidget {
  const OnboardingDimmedText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black38),
    );
  }
}
