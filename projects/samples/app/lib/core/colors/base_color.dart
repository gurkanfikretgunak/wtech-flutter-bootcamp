import 'package:flutter/material.dart';

abstract class BaseColor {
  Color background();
  Color foreground();
  String colorNamed();
  Gradient gradient();
}
