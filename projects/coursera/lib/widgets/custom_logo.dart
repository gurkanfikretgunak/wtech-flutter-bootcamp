import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Color? color;
  const Logo({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "coursera",
        color: color ?? Constant.instance.appBlue,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
