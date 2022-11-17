import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.foregroundColor,
    this.padding,
    this.child,
    this.shadowColor,
    this.minimumSize,
  }) : super(key: key);

  final String text;
  final Color? foregroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final EdgeInsetsGeometry? padding;
  final Function() onPressed;
  final Widget? child;
  final Color? shadowColor;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    Constant constants = Constant.instance;

    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: shadowColor,
        padding: padding,
        foregroundColor: foregroundColor ?? constants.buttonTextForegroundColor,
        elevation: 0,
        minimumSize: minimumSize ??
            Size(context.dynamicWidth(0.2), context.dynamicHeight(0.05)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: child ??
          CustomText(
            text: text,
            color: textColor ?? constants.buttonTextTextColor,
            fontSize: fontSize ?? constants.buttonTextFontSize,
            fontWeight: fontWeight ?? constants.buttonTextFontWeight,
            fontStyle: fontStyle ?? constants.buttonTextFontStyle,
          ),
    );
  }
}
