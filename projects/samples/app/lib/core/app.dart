import 'package:app/core/themes/custom_theme_data.dart';
import 'package:flutter/material.dart';

import '../views/home_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      theme: CustomTheme.customThemeData(),
    );
  }
}
