import 'package:flutter/material.dart';

class PrivacyTextRichWidget extends StatelessWidget {
  const PrivacyTextRichWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: Theme.of(context).textTheme.bodySmall,
      const TextSpan(
        children: [
          TextSpan(text: 'By continuing, you agree to the '),
          TextSpan(
            text: 'Neo Platform Terms & Conditions',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: ', '),
          TextSpan(
            text: 'Rewards Policy',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: ', and '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: '.'),
        ],
      ),
    );
  }
}
