import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.thickness,
    this.color,
  });

  final double? thickness;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness ?? 1,
      color: color,
    );
  }
}
