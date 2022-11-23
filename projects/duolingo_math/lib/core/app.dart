import 'package:duolingo_math/pages/onboarding_pages/onboarding_pages.dart';
import 'package:duolingo_math/navigator/route_generator.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
