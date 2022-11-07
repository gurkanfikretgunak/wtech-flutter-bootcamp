import 'package:app/core/themes/custom_theme_data.dart';
import 'package:app/views/home_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(isCustomAppBar: false, isNotched: true),
      // home: const CascadeExampleView(),
      title: 'WORLD TIME',
      theme: CustomTheme.darkTheme,
    );
  }
}
