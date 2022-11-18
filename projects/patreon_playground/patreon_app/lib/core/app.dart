import 'package:flutter/material.dart';
import 'package:patreon_app/core/themes/custom_theme.dart';
import 'package:patreon_app/views/auth_page.dart';
import 'package:patreon_app/views/explore_page.dart';
import 'package:patreon_app/views/home_page.dart';
import 'package:patreon_app/views/login_email_page.dart';
import 'package:patreon_app/views/messages_page.dart';
import 'package:patreon_app/views/register_page.dart';
import 'package:patreon_app/views/search_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patreon',
      routes: {
        '/home': (context) => const MyHomePage(),
        '/search': (context) => const SearchPage(),
        '/message': (context) => const MessagesPage(),
        '/explore': (context) => const ExplorePage(),
        '/loginWithEmail': (context) => const LoginwithEmail(),
        '/register': (context) => const RegisterPage(),
      },
      theme: CustomTheme.customThemeData(),
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
    );
  }
}
