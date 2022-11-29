import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/constant_libary.dart';
import 'button/button_libary.dart';
import 'text/text_libary.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.child,
    required super.preferredSize,
  });

  static PreferredSize customAppBar({
    required BuildContext context,
    String? titleText,
    Widget? leading,
    Widget? trailing,
    bool? isBackIcon,
    bool? isTrailing,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        title: Row(
          children: [
            context.emptySizedWidthBoxHigh,
            CustomText(
              textAlign: TextAlign.center,
              text: titleText ?? '',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        leadingWidth: context.dynamicWidth(0.3),
        leading: leading ??
            CustomTextButton(
              onPressed: () => Navigator.of(context).pop(),
              text: "text",
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios,
                      color: ColorConstant.instance.appBlue),
                  CustomText(
                    text: "Back",
                    color: ColorConstant.instance.appBlue,
                  )
                ],
              ),
            ),
        actions: [
          trailing ?? const SizedBox(),
        ],
      ),
    );
  }
}
