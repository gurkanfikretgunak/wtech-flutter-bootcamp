import 'package:flutter/material.dart';
import 'package:patreon_app/core/themes/custom_theme.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.w,
    required this.widget,
  });
  final String title;
  final double w;
  final Widget widget;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  PreferredSizeWidget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: Center(
            child: Row(
              children: [
                Padding(padding: const EdgeInsets.all(4.0), child: widget),
                SizedBox(
                  width: w,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: CustomTheme.customThemeData().textTheme.labelMedium,
                )
              ],
            ),
          ),
        ));
  }
}
