import 'package:flutter/material.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'dart:ui';

import 'package:flutter_application_basic/core/colors/base_color.dart';

class ContainerBaseColor extends BaseColor {
  @override
  Color background() {
    // TODO: implement background
    return Colors.purple;
  }

  @override
  Color forground() {
    // TODO: implement forground
    throw UnimplementedError();
  }

  @override
  Gradient gradient() {
    return LinearGradient(colors: [Colors.black, Colors.purple]);
  }

  @override
  String colorNamed() {
    return "Mor";
  }
}
