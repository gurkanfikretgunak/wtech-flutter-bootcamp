import 'package:flutter/material.dart';
import 'package:neo_financial_app/views/profile_view.dart';
import 'package:neo_financial_app/views/sign_in_view.dart';
import 'package:neo_financial_app/views/splash_view.dart';

import '../core/data/constants/route_constants.dart';
import '../views/error_view.dart';
import '../views/home_template_view.dart';
import '../views/onboard/onboard_home_view.dart';
import '../views/onboard/onboard_learn_more_view.dart';
import '../views/sign_up_view.dart';

class Navigation {
  static Route<dynamic> navigationGenarator(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.splashRoute:
        return MaterialPageRoute(
            builder: (context) => const SplashScreenView());
      case RouteConstants.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeTemplateView(),
        );
      case RouteConstants.onboardRoute:
        return MaterialPageRoute(
          builder: (context) => const OnbordHomeView(),
        );
      case RouteConstants.signUpRoute:
        return MaterialPageRoute(
          builder: (context) => const SignUpView(),
        );
      case RouteConstants.signInRoute:
        return MaterialPageRoute(
          builder: (context) => SignInView(),
        );
      case RouteConstants.profileRoute:
        return MaterialPageRoute(
          builder: (context) => const ProfileView(),
        );
      case RouteConstants.onboarBuilderRoute:
        return MaterialPageRoute(
          fullscreenDialog: true,
          builder: (context) => const OnboardLearnMoreView(),
        );
      default:
        return MaterialPageRoute(builder: (context) => const ErrorView());
    }
  }
}
