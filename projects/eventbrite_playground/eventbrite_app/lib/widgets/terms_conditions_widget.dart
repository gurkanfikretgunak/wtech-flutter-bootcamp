import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsConditionWidget extends StatelessWidget {
  const TermsConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: size.height * 0.35,
      child: Padding(
        padding: PaddingConstants.defaultHorizontalPadding * 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Terms and coditions', style: Theme.of(context).textTheme.headline3),
            Padding(
              padding: PaddingConstants.defaultVerticalPadding,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By signing up or logging in, I accept the ',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                        text: 'Eventbrite Terms of Service ',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            debugPrint('Terms of Service');
                          },
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            )),
                    TextSpan(
                      text: 'and have read the ',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          debugPrint('Privacy Policy');
                        },
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: PaddingConstants.defaultHorizontalPadding * 10,
              child: CustomElevatedButton(
                text: 'Accept',
                onPressed: () {
                  //Post to API
                },
                border: true,
                color: Theme.of(context).backgroundColor,
                textStyle: Theme.of(context).textTheme.caption ?? const TextStyle(),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            )
          ],
        ),
      ),
    );
  }
}
