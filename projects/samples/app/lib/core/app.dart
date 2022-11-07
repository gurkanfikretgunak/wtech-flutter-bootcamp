import 'package:flutter/cupertino.dart';
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
      theme: customThemeData(),
    );// MaterialApp
  }

  ThemeData customThemeData() {
    return ThemeData(useMaterial3: false, primarySwatch: Colors.pink);
  }
}