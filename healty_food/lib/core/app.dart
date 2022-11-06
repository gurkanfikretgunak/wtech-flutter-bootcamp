import 'package:flutter/material.dart';

import '../views/home_view.dart';
import 'custom_themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.customThemes(),
      home: Homeview(),
    );
  }
}
