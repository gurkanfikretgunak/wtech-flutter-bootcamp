import 'package:flutter/material.dart';
import 'package:sweetgreen_playground/views/login.dart';
import 'dart:ui';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1B5E20),
      child: (Image.asset(
          "assets/resimler/sweetgreen-rebrands-removebg-preview.png")),
    );
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    // ignore: use_build_context_synchronously
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
