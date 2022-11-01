import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({super.key});
  final String outlined = 'OUTLINED';
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(outlined),
      onPressed: () {},
    );
  }
}
