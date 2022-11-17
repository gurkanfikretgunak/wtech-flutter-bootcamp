import 'package:coursera/core/constants/constants.dart';
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
        color: color ?? Constant.instance.appBlue,
        fontWeight: fontWeight,
      ),
    );
  }
}
