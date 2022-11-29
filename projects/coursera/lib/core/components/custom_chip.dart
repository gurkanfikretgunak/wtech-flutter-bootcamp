import 'package:flutter/material.dart';

import '../constants/constant_libary.dart';
import 'text/custom_auto_size_text.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    this.borderRadius,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });

  final BorderRadiusGeometry? borderRadius;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? RadiusConstant.instance.chipRadius,
      ),
      label: CustomText(
        text: text,
        color: textColor ?? ColorConstant.instance.appWhite,
      ),
    );
  }
}
