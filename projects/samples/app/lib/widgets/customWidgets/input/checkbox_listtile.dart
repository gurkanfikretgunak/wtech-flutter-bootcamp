import 'package:flutter/material.dart';

class CheckBoxListtileWidget extends StatefulWidget {
  const CheckBoxListtileWidget({super.key});

  @override
  State<CheckBoxListtileWidget> createState() => _CheckBoxListtileWidgetState();
}

class _CheckBoxListtileWidgetState extends State<CheckBoxListtileWidget> {
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
    return CheckboxListTile(
      onChanged: _changeValue,
      value: myValue,
      secondary: const Icon(Icons.computer_outlined),
      title: const Text('Yazılım'),
      subtitle: const Text('Material Design\'daki Widget\'lara bak'),
    );
  }
}
