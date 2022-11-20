import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Feeling extends StatelessWidget {
  final String imagePath;
  final String feel;
  const Feeling(this.imagePath, this.feel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey[50],
          height: 50,
          width: 60,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 242, 241, 253),
            ),
            height: 50,
            width: 30,
            child: Image.asset(imagePath),
          ),
        ),
        Text(feel),
      ],
    );
  }
}
