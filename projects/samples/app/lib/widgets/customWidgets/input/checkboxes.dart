import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? myValue = true;
  _changeValue(bool? value) {
    if (value != null) {
      setState(() {
        myValue = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: myValue, onChanged: _changeValue);
  }
}
