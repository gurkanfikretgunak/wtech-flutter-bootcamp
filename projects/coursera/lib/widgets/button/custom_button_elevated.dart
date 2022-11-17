import 'package:coursera/core/constants/color_constant.dart';
import 'package:coursera/core/constants/radius_constant.dart';
import 'package:coursera/core/constants/size_constant.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.primary,
    this.textColor,
    this.fontSize,
    this.height,
    this.width,
    this.borderSideColor,
    this.borderRadius,
    this.shadowColor,
    this.child,
    this.fontWeight,
    this.iconWidget,
  }) : super(key: key);

  final String text;
  final Color? primary;
  final Color? textColor;
  final Color? shadowColor;
  final Color? borderSideColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final Widget? child;
  final Widget? iconWidget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: shadowColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderSideColor ?? ColorConstant.instance.transparent,
          ),
          borderRadius: RadiusConstant.instance.buttonElevatedBorderRadius,
        ),
        padding: EdgeInsets.zero,
        backgroundColor: primary ?? ColorConstant.instance.appBlue,
        fixedSize: Size(
          width ??
              context.dynamicWidth(SizeConstant.instance.buttonElevatedWidth),
          height ??
              context.dynamicHeight(SizeConstant.instance.buttonElevatedHeight),
        ),
      ),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          iconWidget == null ? const SizedBox() : iconWidget!,
          CustomText(
            text: text,
            fontWeight: fontWeight ?? FontWeight.w600,
            fontSize: fontSize,
            color: textColor ?? ColorConstant.instance.appWhite,
          ),
        ],
      ),
    );
  }
}
