import 'package:flutter/material.dart';

enum GridviewColor { blue, yellow, purple, green }

extension GridviewColorExtension on GridviewColor {
  getColor() {
    switch (this) {
      case GridviewColor.blue:
        return Colors.blue;

      case GridviewColor.yellow:
        return Colors.yellow;

      case GridviewColor.purple:
        return Colors.purple;

      case GridviewColor.green:
        return Colors.green;
    }
  }
}
