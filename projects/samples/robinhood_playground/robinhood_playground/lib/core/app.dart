import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/themes/custom_theme_data.dart';
import 'package:robinhood_playground/product/navigator/navigator.dart';

import 'package:robinhood_playground/views/onboarding_stock_views.dart';

class App extends StatelessWidget {
  const App({super.key});
  final String appName = 'Robin Hood Finance App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showPerformanceOverlay: true,
      theme: CustomTheme.customThemeData(),
      title: appName,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingStock(),
      onGenerateRoute: NavigatorCustom().onGenerateRoute,
    );
  }
}
