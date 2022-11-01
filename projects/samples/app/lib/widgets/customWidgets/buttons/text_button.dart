import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    const String okey = 'OK';
    return TextButton(
      child: const Text(okey),
      onPressed: () {},
    );
  }
}
