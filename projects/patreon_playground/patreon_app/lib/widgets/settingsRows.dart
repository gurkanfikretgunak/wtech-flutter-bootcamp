import 'package:flutter/material.dart';

import '../core/themes/custom_theme.dart';

class SettingsRows extends StatelessWidget {
  const SettingsRows({
    Key? key,
    this.tap,
    required this.text,
  }) : super(key: key);
  final Function()? tap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.height,
          child: Text(text,
              style: CustomTheme.customThemeData().textTheme.bodyMedium),
        ),
      ),
    );
  }
}
