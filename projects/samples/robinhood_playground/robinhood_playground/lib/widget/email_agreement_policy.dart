import 'package:flutter/material.dart';

class EmailAgreemnetPolicy extends StatelessWidget {
  const EmailAgreemnetPolicy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _EmailAgreementText.byContinug,
              style: _normalTextStyle(context),
            ),
            Text(
              _EmailAgreementText.robinHood,
              style: _underlineTextStyle(context),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _EmailAgreementText.account,
              style: _underlineTextStyle(context),
            ),
            Text(
              _EmailAgreementText.and,
              style: _normalTextStyle(context),
            ),
            Text(
              _EmailAgreementText.privacy,
              style: _underlineTextStyle(context),
            )
          ],
        )
      ],
    );
  }

  _normalTextStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(color: Colors.black54);
  }

  _underlineTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1?.copyWith(
        color: Colors.black54,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline);
  }
}

class _EmailAgreementText {
  static const byContinug = 'By contiunig, you agree to the ';
  static const robinHood = 'Robinhood User';
  static const account = 'Account Agreement ';
  static const and = 'and';
  static const privacy = 'Privacy Policy';
}
