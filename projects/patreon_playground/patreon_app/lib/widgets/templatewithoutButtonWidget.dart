import 'package:flutter/material.dart';
import 'package:patreon_app/core/themes/custom_theme.dart';

class TemplateWithoutButtonWidget extends StatelessWidget {
  const TemplateWithoutButtonWidget(
      {super.key, required this.imagePath, required this.underImageText});
  final String imagePath;
  final String underImageText;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(imagePath),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: underImageText,
                  style: CustomTheme.customThemeData().textTheme.displayLarge
                ),
              ),
            ),
          ),
        ],
      )
    ]);
  }
}
