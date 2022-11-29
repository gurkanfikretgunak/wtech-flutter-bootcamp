import 'package:flutter/material.dart';

import '../../../../core/components/button/button_libary.dart';
import '../../../../core/components/text/text_libary.dart';

class Titles extends StatelessWidget {
  const Titles({
    super.key,
    required this.titleText,
    this.seeAllOnPressed,
    this.titleColor,
    this.isSeeAll,
    this.titleFontSize,
  });

  final String titleText;
  final VoidCallback? seeAllOnPressed;
  final Color? titleColor;
  final bool? isSeeAll;
  final double? titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: titleText,
              fontSize: titleFontSize ?? 23,
              maxLines: 2,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.start,
              color: titleColor,
            ),
          ),
        ),
        isSeeAll == null
            ? const SizedBox()
            : Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    padding: EdgeInsets.zero,
                    onPressed: seeAllOnPressed ?? () {},
                    text: "See All",
                  ),
                ),
              )
      ],
    );
  }
}
