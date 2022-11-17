import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.color,
    this.wordSpacing,
    this.decoration,
    this.height,
  }) : super(key: key);

  final String text;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? color;
  final double? wordSpacing;
  final TextDecoration? decoration;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      wrapWords: false,
      maxLines: maxLines ?? 1,
      textAlign: textAlign ?? TextAlign.center,
      overflow: overflow ?? TextOverflow.ellipsis,
      maxFontSize: fontSize ?? 14,
      minFontSize: (fontSize ?? 14 - 2),
      style: TextStyle(
        wordSpacing: wordSpacing,
        height: height ?? 1.2,
        color: color,
        fontWeight: fontWeight ?? FontWeight.w400,
        decoration: decoration ?? TextDecoration.none,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}
