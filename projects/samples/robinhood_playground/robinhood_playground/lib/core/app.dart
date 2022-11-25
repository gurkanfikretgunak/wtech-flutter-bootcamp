import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/themes/custom_theme_data.dart';
import 'package:robinhood_playground/product/navigator/navigator.dart';
import 'package:provider/provider.dart';
import 'package:robinhood_playground/views/onboarding_stock_views.dart';

import '../provider/page_transition_provider.dart';

class App extends StatelessWidget {
  const App({super.key});
  final String appName = 'Robin Hood Finance App';
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PageTransicitionProvider(),)
      ],
      child: MaterialApp(
        //showPerformanceOverlay: true,
        theme: CustomTheme.customThemeData(),
        title: appName,
        debugShowCheckedModeBanner: false,
        home: const OnBoardingStock(),
        onGenerateRoute: NavigatorCustom().onGenerateRoute,
      ),
    );
  }
}
