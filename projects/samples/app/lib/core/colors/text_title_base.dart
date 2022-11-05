import 'package:app/core/colors/base_color.dart';
import 'package:flutter/material.dart';

class TextTitleBaseColor extends BaseColor {
  @override
  Color background() {
    return Colors.blueGrey;
  }

  @override
  String colorNamed() {
    return "Blue Grey";
  }

  @override
  Color forground() {
    return Colors.white;
  }

  @override
  Gradient gradient() {
    return LinearGradient(
      colors: [background(), forground()],
    );
  }
}
