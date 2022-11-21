import 'package:flutter/material.dart';
import 'package:patreon_app/views/auth_page.dart';
import 'package:patreon_app/views/explore_page.dart';
import 'package:patreon_app/views/home_page.dart';
import 'package:patreon_app/views/login_email_page.dart';
import 'package:patreon_app/views/login_page.dart';
import 'package:patreon_app/views/messages_page.dart';
import 'package:patreon_app/views/register_page.dart';
import 'package:patreon_app/views/search_page.dart';

class CustomNavigator {
  static Future goToScreen(BuildContext context, String path) {
    return Navigator.pushNamed(context, path);
  }
}

class Navigation {
  static Route<dynamic> navigationGenarator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const AuthPage());
      case '/LoginwithEmail':
        return MaterialPageRoute(
          builder: (context) => const LoginwithEmail(),
        );
      case '/Login':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case '/Register':
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case '/Home':
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
      case '/Explore':
        return MaterialPageRoute(
          builder: (context) => const ExplorePage(),
        );
      case '/Messages':
        return MaterialPageRoute(
          builder: (context) => const MessagesPage(),
        );
      case '/Search':
        return MaterialPageRoute(
          builder: (context) => const SearchPage(),
        );
      default:
        return MaterialPageRoute(builder: (context) => const AuthPage());
    }
  }
}
