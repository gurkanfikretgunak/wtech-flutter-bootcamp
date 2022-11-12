import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyText extends StatelessWidget {
  final String str;
  const MyText(this.str);

  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromARGB(255, 43, 43, 86),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}