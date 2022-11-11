import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/widgets/button/custom_button_icon.dart';
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
    String? titleText,
    Widget? leading,
    Widget? trailing,
    bool? isBackIcon,
    bool? isTrailing,
    required BuildContext context,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading ??
                  SizedBox(
                    width: context.dynamicWidth(0.34),
                    child: IconButton(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      splashRadius: 50,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Align(
                        child: Row(
                          children: [
                            context.emptySizedWidthBoxNormal,
                            const Icon(
                              Icons.arrow_back_ios,
                            ),
                            CustomText(
                              text: "Back",
                              color: ConstantsClass.instance.appBlue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              (isTrailing != null && isTrailing == true)
                  ? trailing ??
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icons.settings_outlined,
                        iconSize: 30,
                      )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
