import 'package:flutter/material.dart';
import 'package:patreon_app/core/themes/custom_theme.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.w,
    required this.color,
    required this.con,
    required this.iColor,
    required this.press,
  });
  final String title;
  final double w;
  final Color color;
  final IconData con;
  final Color iColor;
  final Function()? press;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  PreferredSizeWidget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: Center(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: press,
                      icon: Icon(
                        con,
                        color: iColor,
                      )),
                ),
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
