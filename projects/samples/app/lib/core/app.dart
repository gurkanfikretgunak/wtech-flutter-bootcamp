import 'package:app/core/themes/custom_theme.dart';
import 'package:app/views/widgets_examples.dart';
import 'package:flutter/material.dart';

import '../views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      title: 'Flutter Demo',
      theme: CustomTheme.customTheme(),
    );
  }
}
