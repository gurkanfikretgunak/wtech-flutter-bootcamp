import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});
  final String elevated = 'ELEVATED';
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(elevated),
      onPressed: () {},
    );
  }
}
