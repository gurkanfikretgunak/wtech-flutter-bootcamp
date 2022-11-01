import 'package:app/core/theme/themedata.dart';
import 'package:app/views/tabbar_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TwitterTabbarView(),
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.customThemeData(context),
    );
  }
}
