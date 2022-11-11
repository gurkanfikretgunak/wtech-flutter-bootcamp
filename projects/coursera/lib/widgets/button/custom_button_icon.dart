import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.color,
    this.iconSize,
    this.splashRadius,
    this.splashColor,
    this.highlightColor,
    this.tooltip,
  }) : super(key: key);

  final Color? color;
  final Color? splashColor;
  final Color? highlightColor;
  final double? iconSize;
  final double? splashRadius;
  final IconData icon;
  final String? tooltip;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    ConstantsClass constants = ConstantsClass.instance;

    return IconButton(
      tooltip: tooltip ?? "",
      onPressed: onPressed,
      icon: Icon(icon),
      color: color ?? constants.buttonIconColor,
      iconSize: iconSize ?? constants.buttonIconSize,
      splashColor: splashColor ?? constants.buttonIconSplashColor,
      highlightColor: highlightColor ?? constants.buttonIconHighlightColor,
      splashRadius: splashRadius ?? constants.buttonIconSplashRadius,
    );
  }
}
