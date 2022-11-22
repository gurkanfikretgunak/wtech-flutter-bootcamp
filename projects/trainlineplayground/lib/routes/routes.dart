import 'package:flutter/material.dart';

import '../views/orjin_home_page.dart';
import '../views/register_page.dart';
import '../views/sign_in_account_page.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings){

    final args = settings.arguments;

    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => const OriginalHomePage());
      case '/rightpage':
        return MaterialPageRoute(builder: (_) => const SignInAccountPage());
      case '/createAccountpage':
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default: 
        return _errorRoute(); 
    }
  }
  
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text("error"),),
        body: const Center(
          child: Text("error"),
        ),
      );

    });
  }
}