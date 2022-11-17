import '../../core/constants/color_constant.dart';
import 'package:flutter/material.dart';

class CustomTextSpan {
  textSpan({
    required String text,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: color ?? ColorConstant.instance.appBlue,
        fontWeight: fontWeight,
      ),
    );
  }
}
