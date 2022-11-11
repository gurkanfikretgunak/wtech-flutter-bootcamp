import 'package:coursera/widgets/custom_card.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.child,
    required super.preferredSize,
  });

  static PreferredSize customAppBar({
    required String titleText,
    Widget? leading,
    Widget? trailing,
    bool? isBackIcon,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //       width: context.,
                  color: Colors.pink,
                  child: Row(
                    children: [
                      leading ??
                          IconButton(
                              onPressed: () {},
                              icon: Row(
                                children: const [
                                  Icon(
                                    Icons.arrow_back_ios,
                                  ),
                                  CustomText(text: "Back"),
                                ],
                              ))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
