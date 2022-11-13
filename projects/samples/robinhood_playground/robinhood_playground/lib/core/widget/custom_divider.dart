import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.dividerColor});
  final Color dividerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width * 0.30,
      decoration: BoxDecoration(
          color: dividerColor,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}

enum BottomDivider { black, white }

extension BottomContainerColorExtension on BottomDivider {
  Color getColor() {
    switch (this) {
      case BottomDivider.black:
        return Colors.black;
      case BottomDivider.white:
        return Colors.white;
    }
  }
}
