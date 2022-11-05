import 'package:app/core/colors/base_color.dart';
import 'package:flutter/material.dart';

class ContainerBaseColor extends BaseColor {
  @override
  Color background() {
    return Colors.purple;
  }

  @override
  String colorNamed() {
    return 'Mor';
  }

  @override
  Color forground() {
    throw UnimplementedError();
  }

  @override
  Gradient gradient() {
    return LinearGradient(colors: [Colors.black, Colors.purple]);
  }
}
