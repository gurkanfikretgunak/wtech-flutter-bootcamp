import 'package:flutter/material.dart';
import 'package:neo_financial_app/views/card_view.dart';
import 'package:neo_financial_app/views/insights_view.dart';
import '../views/error_view.dart';
import '../views/home_view.dart';
import '../views/onboarding/onboarding_screen_view.dart';
import '../views/onboarding/register_template_view.dart';
import '../views/payments_view.dart';
import '../views/rewards_view.dart';
import '../views/splash_view.dart';

class Navigation {
  static Route<dynamic> navigationGenarator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => const SplashScreenView());
      case '/Homeview':
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case '/Insights':
        return MaterialPageRoute(
          builder: (context) => const InsightsView(),
        );
      case '/Rewards':
        return MaterialPageRoute(
          builder: (context) => const RewardsView(),
        );
      case '/Payments':
        return MaterialPageRoute(
          builder: (context) => const PaymentsView(),
        );
      case '/Card':
        return MaterialPageRoute(
          builder: (context) => const CardView(),
        );
      case '/Onboarding':
        return MaterialPageRoute(
          builder: (context) => const OnbordingScreenView(),
        );
      case '/Register':
        return MaterialPageRoute(
          builder: (context) => const RegisterTemplateView(),
        );
      default:
        return MaterialPageRoute(builder: (context) => const ErrorView());
    }
  }
}
