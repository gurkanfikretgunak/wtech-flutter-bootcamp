import 'package:flutter/material.dart';
import '../views/home/home_view.dart';
import '../views/onboarding/onboarding_screen_view.dart';
import '../views/onboarding/register_template_view.dart';
import '../views/splash/splash_view.dart';

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
      case '/Onboarding':
        return MaterialPageRoute(
          builder: (context) => const OnbordingScreenView(),
        );
      case '/Register':
        return MaterialPageRoute(
          builder: (context) => const RegisterTemplateView(),
        );
      default:
        return MaterialPageRoute(builder: (context) => const HomeView());
    }
  }
}
