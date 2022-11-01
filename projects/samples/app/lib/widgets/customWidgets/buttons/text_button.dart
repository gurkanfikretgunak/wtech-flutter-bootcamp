import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    const String okey = 'OK';
    return TextButton(
      child: Text(okey, style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.blueAccent)),
      onPressed: () {},
    );
  }
}
