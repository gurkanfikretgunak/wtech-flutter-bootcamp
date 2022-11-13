import 'package:flutter/material.dart';

class IntroSlide extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const IntroSlide({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        const SizedBox(height: 30),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
