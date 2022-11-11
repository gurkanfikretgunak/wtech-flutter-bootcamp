import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1B5E20),
      child: (
        Image.asset(
          "assets/resimler/sweetgreen-rebrands-removebg-preview.png")),
    );
  }
}
