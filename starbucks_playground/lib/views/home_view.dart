import 'package:flutter/material.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key, required String title});

  @override
  State<Homeview> createState() => MyHomeview();
}

class MyHomeview extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Merhaba",
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
