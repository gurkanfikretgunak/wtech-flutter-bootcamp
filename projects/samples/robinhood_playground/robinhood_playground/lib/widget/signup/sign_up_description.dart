import 'package:flutter/material.dart';

class SignUpDescription extends StatelessWidget {
  const SignUpDescription({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
