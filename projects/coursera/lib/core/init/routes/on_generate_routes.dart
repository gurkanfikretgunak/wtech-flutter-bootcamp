import 'package:coursera/views/course_detail/course_detail_view.dart';
import 'package:flutter/material.dart';

import '../../../views/authentication/sign_in/sign_in_with_email/sign_in_with_email_view.dart';
import '../../../views/authentication/sign_in/sign_in_with_organization/sign_in_with_organization.view.dart';
import '../../../views/authentication/sign_up/sign_up_view.dart';
import '../../../views/authentication/splash/splash_view.dart';
import '../../../views/home/drawer/theme/theme_setting_view.dart';
import '../../../views/home/home_view.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _buildMaterialPageRoute(const SplashView());
      case "/SignInView":
        return _buildMaterialPageRoute(const SignInView());
      case "/SignInWithEmail":
        return _buildMaterialPageRoute(const SignInWithEmailView());
      case "/SignUpView":
        return _buildMaterialPageRoute(const SignUpView());
      case "/HomeView":
        return _buildMaterialPageRoute(const HomeView());
      case "/ThemeSettingView":
        return _buildMaterialPageRoute(const ThemeSettingView());
      case "/CourseDetailView":
        return _buildMaterialPageRoute(const CourseDetailView());

      default:
        return _buildMaterialPageRoute(
          Text('No route defined for ${settings.name}'),
        );
    }
  }

  static MaterialPageRoute<dynamic> _buildMaterialPageRoute(Widget screen) {
    return MaterialPageRoute(
      builder: (BuildContext context) => screen,
    );
  }
}
