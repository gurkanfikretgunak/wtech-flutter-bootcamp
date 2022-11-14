import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/constant/padding.dart';
import 'package:robinhood_playground/widget/login_signup_divider_component.dart';
import 'package:robinhood_playground/widget/onboarding_base_title.dart';
import 'package:robinhood_playground/widget/onboarding_dimmed_text.dart';
import 'package:robinhood_playground/widget/onboarding_image.dart';

class StartOnboarding extends StatelessWidget {
  const StartOnboarding({super.key});
  final String path = 'assets/page_start.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnboardingImage(path: path),
          Padding(
            padding: GeneralPadding().generalHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: _PaddingStartOnboarding().titleTop,
                  child:
                      OnBoardingBaseTitle(text: _StartOnBoardingText().title),
                ),
                Padding(
                  padding: _PaddingStartOnboarding().descriptionTop,
                  child: Text(
                    _StartOnBoardingText().description,
                    textAlign: TextAlign.left,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(height: 1.2),
                  ),
                ),
                FittedBox(
                    child: Padding(
                  padding: _PaddingStartOnboarding().dimmedTop,
                  child:
                      OnboardingDimmedText(text: _StartOnBoardingText().dimmed),
                )),
              ],
            ),
          ),
          Padding(
            padding: _PaddingStartOnboarding().loginTop,
            child: const LoginSignupDivider(),
          )
        ],
      ),
    );
  }
}

class _StartOnBoardingText {
  final String title = 'Start with just \$1';
  final String description =
      'Account minimums? Commission fees? Never\nheard of them. Invest with as much as you\'d like\nand get your money\'s worth every time.';
  final String dimmed =
      'Limitations and other fees may apply. View our\nCustomer Agreement and fee more.schedule to learn\nmore';
}

class _PaddingStartOnboarding {
  final EdgeInsets titleTop = const EdgeInsets.only(top: 30);
  final EdgeInsets descriptionTop = const EdgeInsets.only(top: 15);
  final EdgeInsets dimmedTop = const EdgeInsets.only(top: 30);
  final EdgeInsets loginTop = const EdgeInsets.only(top: 20);
}
