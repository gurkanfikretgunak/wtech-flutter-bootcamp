import 'package:coursera/widgets/custom_divider.dart';
import 'package:coursera/widgets/text/text_libary.dart';
import 'package:flutter/material.dart';

import '../core/constants/constant_libary.dart';

class CustomOrText extends StatelessWidget {
  const CustomOrText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: CustomDivider()),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: CustomText(
              text: 'or',
              color: ColorConstant.instance.appGreyDark,
            ),
          ),
        ),
        const Expanded(flex: 2, child: CustomDivider()),
      ],
    );
  }
}
