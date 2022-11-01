import 'package:flutter/material.dart';

class CustomElevatedIconButton extends StatelessWidget {
  const CustomElevatedIconButton({super.key});
  final String search = 'Search';
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.search_off_outlined),
      label: Text(search),
    );
  }
}
