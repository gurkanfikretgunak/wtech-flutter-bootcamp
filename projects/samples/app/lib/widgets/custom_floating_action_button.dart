import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.shopping_cart_rounded,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }
}
