import 'package:flutter/material.dart';
import 'package:patreon_app/views/auth_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Patreon',
      // theme: ThemeData(
      //primarySwatch: Colors.red,
      // ),
      home: AuthPage(),
    );
  }
}
