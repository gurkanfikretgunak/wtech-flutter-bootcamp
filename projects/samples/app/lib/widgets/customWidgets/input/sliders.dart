import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 0;

  void _changeValue(double newValue) {
    setState(() {
      value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      onChanged: _changeValue,
      min: 0,
      max: 100,
      divisions: 100,
      label: value.toString(),
    );
  }
}
