import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/register_notifier.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TermsConditionWidget extends StatelessWidget with PaddingConstants {
  TermsConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: size.height * 0.35,
      child: Padding(
        padding: defaultHorizontalPadding * 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppConstants.conditionTitle, style: Theme.of(context).textTheme.headline3),
            Padding(
              padding: defaultVerticalPadding,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppConstants.conditionText,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                        text: AppConstants.conditionLinkText,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            debugPrint('Terms of Service');
                          },
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            )),
                    TextSpan(
                      text: AppConstants.conditionText2,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    TextSpan(
                      text: AppConstants.conditionLinkText2,
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
              padding: defaultHorizontalPadding * 10,
              child: CustomElevatedButton(
                text: AppConstants.conditionAcceptButtonText,
                onPressed: () {
                  //Post to API
                  context.read<RegisterNotifier>().createUser();
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
              child: const Text(AppConstants.conditionCancelButtonText),
            )
          ],
        ),
      ),
    );
  }
}
