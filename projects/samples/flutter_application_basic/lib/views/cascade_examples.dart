import 'package:flutter/material.dart';

class CascadeExamples extends StatelessWidget {
  const CascadeExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Cascade Text",
            style: TextStyle(
              foreground: Paint()..color = Colors.white,
              background: Paint()
                ..blendMode = BlendMode.colorBurn
                ..color = Colors.purple
                ..style = PaintingStyle.fill,
              fontSize: 50,
              color: Colors.red,
              //backgroundColor: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}
