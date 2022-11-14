import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/constant/padding.dart';
import 'package:robinhood_playground/widget/login_signup_divider_component.dart';
import 'package:robinhood_playground/widget/onboarding_base_title.dart';
import 'package:robinhood_playground/widget/onboarding_dimmed_text.dart';
import 'package:robinhood_playground/widget/onboarding_image.dart';

class InvestingOnBoarding extends StatelessWidget {
  const InvestingOnBoarding({super.key});
  final String path = 'assets/page_investing.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnboardingImage(path: path),
        Padding(
          padding: GeneralPadding().generalHorizontal +
              _InvestingPadding().baseTitleTop,
          child: const _InvestingText(),
        ),
        Padding(
          padding: _InvestingPadding().loginTop,
          child: const LoginSignupDivider(),
        )
      ],
    ));
  }
}

class _InvestingText extends StatelessWidget {
  const _InvestingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnBoardingBaseTitle(
          text: _InvestingOnBoardingText().title,
        ),
        Padding(
          padding: _InvestingPadding().descriptionTop,
          child: Text(
            _InvestingOnBoardingText().description,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        //
        Padding(
          padding: _InvestingPadding().dimmedTop,
          child: OnboardingDimmedText(text: _InvestingOnBoardingText().dimmed),
        ),
      ],
    );
  }
}

class _InvestingOnBoardingText {
  final String title = 'Investing made\nfor everyone';
  final String description =
      'Invest in thousands of stocks and ETFs, read\nbusiness news, and grow your knowledge with\n educational resources.';
  final String dimmed = 'Securities trading is offered through Robinho..';
}

class _InvestingPadding {
  final EdgeInsets baseTitleTop = const EdgeInsets.only(top: 25);
  final EdgeInsets descriptionTop = const EdgeInsets.only(top: 15);
  final EdgeInsets dimmedTop = const EdgeInsets.only(top: 10);
  final EdgeInsets loginTop = const EdgeInsets.only(top: 30);
}
