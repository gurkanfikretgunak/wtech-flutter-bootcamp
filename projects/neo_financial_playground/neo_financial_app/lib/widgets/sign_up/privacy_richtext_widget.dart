import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';

class PrivacyRichTextWidget extends StatelessWidget {
  const PrivacyRichTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: Theme.of(context).textTheme.bodySmall,
      TextSpan(
        children: [
          TextSpan(text: TextConstants.signUpHomeRichTextList[0]),
          TextSpan(
            text: TextConstants.signUpHomeRichTextList[1],
            style: const TextStyle(color: Colors.blue),
          ),
          TextSpan(text: TextConstants.signUpHomeRichTextList[2]),
          TextSpan(
            text: TextConstants.signUpHomeRichTextList[3],
            style: const TextStyle(color: Colors.blue),
          ),
          TextSpan(text: TextConstants.signUpHomeRichTextList[4]),
          TextSpan(
            text: TextConstants.signUpHomeRichTextList[5],
            style: const TextStyle(color: Colors.blue),
          ),
          TextSpan(text: TextConstants.signUpHomeRichTextList[6]),
        ],
      ),
    );
  }
}
