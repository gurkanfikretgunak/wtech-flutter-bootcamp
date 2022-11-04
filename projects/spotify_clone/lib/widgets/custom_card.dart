import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.child,
    this.color,
    this.elevation,
    this.height,
    this.width,
    this.margin,
    this.shadowColor,
    this.borderRadius,
    this.borderSideColor,
  }) : super(key: key);

  final Color? color;
  final Color? shadowColor;
  final Color? borderSideColor;
  final Widget child;
  final double? elevation;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: color,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderSideColor ?? Colors.grey.shade200),
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
