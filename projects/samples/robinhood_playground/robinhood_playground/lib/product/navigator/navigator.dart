import 'package:flutter/material.dart';
import 'package:robinhood_playground/product/navigator/navigator_routes.dart';
import 'navigator_library.dart';

class NavigatorCustom {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    final routes = NavigateRoutes.values.byName(routeSettings.name!);

    switch (routes) {
      case NavigateRoutes.onboarding:
        return _navigateToNormal(const OnBoardingStock());

      case NavigateRoutes.enterview:
        return _navigateToNormal(const EnterView());
      case NavigateRoutes.emailsignup:
        return _navigateToNormal(const GetEmailView());
      case NavigateRoutes.passwordsignup:
        return _navigateToNormal(const GetPasswordView());
      case NavigateRoutes.firslastname:
        return _navigateToNormal(const FirsAndLastNameView());
    }
    
  }

  Route<dynamic>? _navigateToNormal(Widget child) {
    return MaterialPageRoute(
      builder: (context) {
        return child;
      },
    );
  }
}
