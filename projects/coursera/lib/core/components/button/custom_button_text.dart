import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/constant_libary.dart';
import '../text/text_libary.dart';

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
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? shadowColor;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: shadowColor,
        padding: padding,
        elevation: 0,
        minimumSize: minimumSize ??
            Size(context.dynamicWidth(0.2), context.dynamicHeight(0.05)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: child ??
          CustomText(
            text: text,
            color: textColor ?? ColorConstant.instance.appBlue,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
          ),
    );
  }
}
