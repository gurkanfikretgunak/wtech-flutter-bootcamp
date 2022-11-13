import 'package:flutter/material.dart';
import 'package:robinhood_playground/widget/login_signup_divider_component.dart';
import 'package:robinhood_playground/widget/onboarding_base_title.dart';

class WelcomeOnBoarding extends StatefulWidget {
  const WelcomeOnBoarding({super.key});

  @override
  State<WelcomeOnBoarding> createState() => _WelcomeOnBoardingState();
}

class _WelcomeOnBoardingState extends State<WelcomeOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/welcomepage.png',
              ),
              fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12),
            child: const _OnboardingWelcomeText(),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.45),
            child: const LoginSignupDivider(isBackGroundGreen: true),
          )
        ],
      ),
    ));
  }
}

class _OnboardingWelcomeText extends StatelessWidget {
  const _OnboardingWelcomeText();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const OnBoardingBaseTitle(text: 'Welcome to\n Robinhood'),
      Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
        child: Text(
          textAlign: TextAlign.center,
          _WelcomeOnBoardingText().getAccess,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(height: 1.4),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
        child: Text(
          _WelcomeOnBoardingText().swipe,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      )
    ]);
  }
}

class _WelcomeOnBoardingText {
  final String getAccess =
      'Get access to the tools you need to invest,\n spend, and put your money in motion.';
  final String swipe = 'Swipe to learn more ->';
}
