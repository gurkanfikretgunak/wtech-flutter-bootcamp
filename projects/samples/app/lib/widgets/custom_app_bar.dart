import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.child,
    required super.preferredSize,
  });

  static PreferredSize customAppBar({
    Size? preferredSize,
    required String titleText,
    Color? appBarColor,
    required BuildContext context,
  }) {
    return PreferredSize(
      preferredSize: preferredSize ?? const Size.fromHeight(70),
      child: Container(
        decoration: BoxDecoration(
          color: appBarColor ?? Colors.grey.shade300,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                ),
                Text(
                  titleText,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.notification_important_outlined,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
