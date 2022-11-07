import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_application_basic/core/colors/base_color.dart';

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
