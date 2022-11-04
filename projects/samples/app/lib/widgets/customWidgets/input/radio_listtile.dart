
import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  String gender = '';

  void _onChanged(value) {
    setState(() {
      gender = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<String>(
          value: Genders.kadin.name,
          groupValue: gender,
          onChanged: _onChanged,
          title: Text(Genders.kadin.name.toUpperCase()),
        ),
        RadioListTile<String>(
          value: Genders.erkek.name,
          groupValue: gender,
          onChanged: _onChanged,
          title: Text(Genders.erkek.name.toUpperCase()),
        ),
      ],
    );
  }
}

enum Genders { kadin, erkek }
