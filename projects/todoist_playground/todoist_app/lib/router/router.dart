import 'package:flutter/material.dart';
import 'package:todoist_app/constants/router_name_constants.dart';
import 'package:todoist_app/views/auth/information_page_view.dart';
import 'package:todoist_app/views/auth/login_with_email_view.dart';
import 'package:todoist_app/views/auth/password_page_view.dart';
import 'package:todoist_app/views/auth/pick_theme_page_view.dart';
import 'package:todoist_app/views/auth/sign_up_page_view.dart';
import 'package:todoist_app/views/home/home_page_view.dart';
import 'package:todoist_app/views/settings/account_settings_view.dart';
import 'package:todoist_app/views/settings/settings_app.dart';
import 'package:todoist_app/views/splash/splash_screen_view.dart';
import 'package:todoist_app/views/welcome_page_view.dart';
import 'package:todoist_app/widgets/loading_widget.dart';

class CustomRouter {
  static Route<Widget> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeToApp());
      // ignore: no_duplicate_case_values
      case loadingRoute:
        return MaterialPageRoute(
            builder: (_) => const LoadingPage(
                  logText: "If you don't know where you are going,you might wind up someplace else. -YOGI BERRA",
                ));
      case passwordLoginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPasswordView());
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case informaitonRoute:
        return MaterialPageRoute(builder: (_) => const InformationApp());
      case themeSwitcherRoute:
        return MaterialPageRoute(builder: (_) => const ThemeSwitcher());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => const SettingsApp());
      case settingsAccountRoute:
        return MaterialPageRoute(builder: (_) => const AccountSettingView());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case emailLoginRoute:
        return MaterialPageRoute(builder: (_) => const LoginWithEmail());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
