import 'package:flutter/material.dart';
import 'package:robinhood_playground/views/onboarding_pageview/investing_onboarding.dart';
import 'package:robinhood_playground/views/onboarding_pageview/start_onboarding.dart';
import 'package:robinhood_playground/views/onboarding_pageview/welcome_onboarding.dart';

class EnterView extends StatefulWidget {
  const EnterView({super.key});

  @override
  State<EnterView> createState() => _EnterViewState();
}

class _EnterViewState extends State<EnterView> {
  final _pageController = PageController(viewportFraction: 1);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      padEnds: true,
      pageSnapping: true,
      controller: _pageController,
      onPageChanged: _updatePageIndex,
      children: const [
        WelcomeOnBoarding(),
        InvestingOnBoarding(),
        StartOnboarding(),
      ],
    );
  }
}
