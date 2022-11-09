import 'package:coursera/core/themes/custom_theme_data.dart';
import 'package:coursera/views/splash_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeView(),
      title: 'Flutter Demo',
      theme: CustomTheme.customThemeData(context),
    );
  }
}
