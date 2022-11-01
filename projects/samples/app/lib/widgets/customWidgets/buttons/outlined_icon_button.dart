import 'package:flutter/material.dart';

class CustomOutlinedIconButton extends StatelessWidget {
  const CustomOutlinedIconButton({super.key});
  final String save = 'SAVE';
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.save_as_outlined),
      onPressed: () {},
      label: Text(save),
    );
  }
}
