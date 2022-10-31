import 'package:app/core/themes/custom_theme_data.dart';
import 'package:app/views/home_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      title: 'Flutter Demo',
      theme: CustomTheme.customThemeData(),
    );
  }
}
