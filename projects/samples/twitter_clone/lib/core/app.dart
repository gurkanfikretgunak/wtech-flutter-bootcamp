import 'package:flutter/material.dart';
import 'package:twitter_clone/core/theme_data/theme_data.dart';

import '../view/home_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.customThemeData(context),
        home: const HomeView());
  }
}
