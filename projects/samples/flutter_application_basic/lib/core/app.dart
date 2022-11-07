import 'package:flutter/material.dart';
import 'package:flutter_application_basic/views/cascade_examples.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: CascadeExamples(),
        title: 'Flutter Demo',
        theme: CustomTheme.customThemeData());
  }
}

class CustomTheme {
  static customThemeData() {}
}
