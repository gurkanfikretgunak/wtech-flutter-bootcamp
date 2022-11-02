import 'package:app/core/custom_theme_data.dart';
import 'package:flutter/material.dart';

import '../views/home_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const HomeView(),
        title: 'Flutter Demo',
        theme: CustomTheme.customThemeData());
  }
}
