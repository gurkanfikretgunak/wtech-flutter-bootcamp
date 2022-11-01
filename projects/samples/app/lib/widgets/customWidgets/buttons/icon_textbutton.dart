import 'package:flutter/material.dart';

class CustomIconTextButton extends StatelessWidget {
  const CustomIconTextButton({super.key});
  final String select = 'SELECT';
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: const Icon(Icons.select_all_outlined),
      label: Text(select),
      onPressed: () {},
    );
  }
}
