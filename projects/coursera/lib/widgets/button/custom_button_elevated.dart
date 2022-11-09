import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.height,
    this.width,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final Color? textColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          width ?? context.dynamicWidth(1),
          height ?? context.dynamicHeight(0.08),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
      onPressed: onPressed,
      child: CustomText(
        text: text,
        color: textColor ?? const Color(0xFFFFFFFF),
      ),
    );
  }
}
