import 'package:flutter/material.dart';

class CustomMaterialBanner extends StatelessWidget {
  const CustomMaterialBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialBanner(
      content: const Text('Error message text'),
      leading: const CircleAvatar(child: Icon(Icons.delete)),
      actions: [
        TextButton(
          child: const Text('ACTION 1'),
          onPressed: () {},
        ),
        TextButton(
          child: const Text('ACTION 2'),
          onPressed: () {},
        ),
      ],
    );
  }
}
