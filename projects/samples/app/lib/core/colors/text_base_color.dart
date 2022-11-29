import 'package:app/core/colors/base_color.dart';
import 'package:flutter/material.dart';

class TextBaseColor extends BaseColor {
  @override
  Color background() {
    return Colors.red;
  }

  @override
  String colorNamed() {
    return "Text";
  }

  @override
  Color forground() {
    throw UnimplementedError();
  }

  @override
  Gradient gradient() {
    throw UnimplementedError();
  }
}
