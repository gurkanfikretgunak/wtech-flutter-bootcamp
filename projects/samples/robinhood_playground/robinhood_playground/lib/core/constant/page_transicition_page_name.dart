

import 'package:flutter/material.dart';

import '../../views/onboarding_pageview/cover_onboarding.dart';
import '../../views/onboarding_pageview/investing_onboarding.dart';
import '../../views/onboarding_pageview/start_onboarding.dart';
import '../../views/onboarding_pageview/welcome_onboarding.dart';

class PageTranscitionPageName{

   static List<Widget> path = [
    const WelcomeOnBoarding(),
    const InvestingOnBoarding(),
    const StartOnboarding(),
    const CoverOnBoarding(),
  ];
}

 