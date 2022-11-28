import 'package:flutter/material.dart';

import '../../../../core/constants/constant_libary.dart';
import 'text/text_libary.dart';

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
        color: color ?? ColorConstant.instance.appBlue,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
