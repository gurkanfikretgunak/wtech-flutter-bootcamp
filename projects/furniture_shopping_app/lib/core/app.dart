import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/themes/custom_theme_data.dart';
import 'package:furniture_shopping_app/views/home_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      title: 'Flutter Demo',
      theme: CustomTheme.customThemeData(),
    );
  }
}
