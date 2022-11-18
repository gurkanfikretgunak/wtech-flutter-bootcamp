import 'package:flutter/material.dart';
import 'package:patreon_app/core/themes/custom_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({Key? key, required this.urlLabel, required this.url})
      : super(key: key);

  final String urlLabel;
  final String url;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor:
            CustomTheme.customThemeData().textTheme.labelSmall?.color,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        minimumSize: const Size(0, 0),
        textStyle: Theme.of(context).textTheme.bodySmall,
      ),
      onPressed: () {
        _launchUrl(url);
      },
      child: Text(
        urlLabel,
        style: TextStyle(
            decoration: TextDecoration.underline,
            color: CustomTheme.customThemeData().textTheme.labelSmall?.color),
      ),
    );
  }
}
