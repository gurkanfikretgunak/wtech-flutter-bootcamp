import 'package:flutter/material.dart';

class Onboard {
  final String title;
  final IconData leftIcon;
  final IconData? rightIcon;
  final Widget columnWidget;
  final Widget bottomWidget;
  final String btnName;

  Onboard({
    required this.title,
    required this.leftIcon,
    required this.rightIcon,
    required this.columnWidget,
    required this.bottomWidget,
    required this.btnName,
  });
}
