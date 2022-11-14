import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/constant/padding.dart';
import 'package:robinhood_playground/product/assets/image_path.dart';
import 'package:robinhood_playground/widget/login_signup_divider_component.dart';
import 'package:robinhood_playground/widget/onboarding_base_title.dart';
import 'package:robinhood_playground/widget/onboarding_dimmed_text.dart';
import 'package:robinhood_playground/widget/onboarding_image.dart';

class CoverOnBoarding extends StatelessWidget {
  const CoverOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnboardingImage(path: ImagePath.instance.cover),
          Padding(
            padding: GeneralPadding().generalHorizontal,
            child: const _CoverText(),
          ),
          Padding(
            padding: _PaddingCoverOnBoarding().loginTop,
            child: const LoginSignupDivider(),
          ),
        ],
      ),
    );
  }
}

class _CoverText extends StatelessWidget {
  const _CoverText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: _PaddingCoverOnBoarding().titleTop,
          child: OnBoardingBaseTitle(text: _CoverOnBoardingText().title),
        ),
        Padding(
          padding: _PaddingCoverOnBoarding().descriptionTop,
          child: Text(
            _CoverOnBoardingText().description,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(height: 1.2),
          ),
        ),
        Padding(
          padding: _PaddingCoverOnBoarding().dimmedTop,
          child: OnboardingDimmedText(text: _CoverOnBoardingText().dimmed),
        ),
      ],
    );
  }
}

class _CoverOnBoardingText {
  final String title = 'We\'ve got you\ncovered  ';
  final String description =
      'You\'re protected with security measures like\nencryption and two-factor authentication, and\nyou have access to in-app phone support 24/7.';
  final String dimmed = 'Investing involves risk, including loss of princi...';
}

class _PaddingCoverOnBoarding {
  final EdgeInsets titleTop = const EdgeInsets.only(top: 30);
  final EdgeInsets descriptionTop = const EdgeInsets.only(top: 10);
  final EdgeInsets dimmedTop = const EdgeInsets.only(top: 10);
  final EdgeInsets loginTop = const EdgeInsets.only(top: 30);
}
