import 'package:flutter/material.dart';
import 'package:robinhood_playground/views/onboarding_stock_views.dart';

class App extends StatelessWidget {
  const App({super.key});
  final String appName = 'Robin Hood Finance App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        home: const OnBoardingStock());
  }
}
