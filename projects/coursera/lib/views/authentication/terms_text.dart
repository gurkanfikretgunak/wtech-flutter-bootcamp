import 'package:coursera/core/constants/constants.dart';
import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    ConstantsClass constant = ConstantsClass.instance;

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By signing up to create an account I accept Courseras',
        style: TextStyle(
          color: constant.appBlack,
          decorationStyle: TextDecorationStyle.dashed,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Terms of Service, Privacy Policy',
            style: TextStyle(
              height: 1.5,
              color: constant.appBlue,
            ),
          ),
          const TextSpan(
            text: 'and',
          ),
          TextSpan(
            text: 'Honor Code',
            style: TextStyle(
              height: 1.5,
              color: constant.appBlue,
            ),
          ),
        ],
      ),
    );
  }
}
