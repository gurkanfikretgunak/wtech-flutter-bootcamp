import 'package:flutter/material.dart';

import '../constants/constant_libary.dart';
import 'custom_divider.dart';
import 'text/text_libary.dart';

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
              color: ColorConstant.instance.appGrey3,
            ),
          ),
        ),
        const Expanded(flex: 2, child: CustomDivider()),
      ],
    );
  }
}
