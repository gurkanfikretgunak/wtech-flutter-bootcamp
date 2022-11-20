import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingText extends StatefulWidget {
  final String text;
  const SettingText(this.text);

  @override
  State<SettingText> createState() => _SettingTextState();
}

class _SettingTextState extends State<SettingText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(color: Color.fromARGB(255, 67, 71, 101), fontSize: 16),
    );
  }
}
