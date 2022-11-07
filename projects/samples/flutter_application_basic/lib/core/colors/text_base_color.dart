import 'package:flutter/material.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'dart:ui';

import 'package:flutter_application_basic/core/colors/base_color.dart';

class TextBaseColor extends BaseColor {
  @override
  Color background() {
    return Colors.red;
  }

  @override
  Color forground() {
    // TODO: implement forground
    throw UnimplementedError();
  }

  @override
  Gradient gradient() {
    // TODO: implement gradient
    throw UnimplementedError();
  }

  @override
  String colorNamed() {
    return "Text";
  }
}
