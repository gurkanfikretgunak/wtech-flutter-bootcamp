import 'package:coursera/core/constants/color_constant.dart';
import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

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
