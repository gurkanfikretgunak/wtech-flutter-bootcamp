import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    Key? key,
    required this.btnName,
    required this.btnIcon,
    required this.function,
  }) : super(key: key);

  final String btnName;
  final IconData? btnIcon;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: PaddingConstants.largeVerticalPadding,
          child: Text(btnName),
        ),
        Padding(
          padding: btnIcon != null
              ? PaddingConstants.smallLeftPadding
              : EdgeInsets.zero,
          child: btnIcon != null ? Icon(btnIcon) : null,
        )
      ]),
    );
  }
}
