import 'dart:async';

import 'package:flutter/material.dart';
import 'package:patreon_app/views/auth_page.dart';

import '../views/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const AuthPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://is2-ssl.mzstatic.com/image/thumb/Purple122/v4/f6/87/f6/f687f659-76d7-ff4f-1971-18fea305108b/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/1024x1024.jpg"),
                fit: BoxFit.contain),
          ),
        ));
  }
}
