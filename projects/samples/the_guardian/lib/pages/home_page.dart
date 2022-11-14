import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home Page!",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 5, 41, 77),
    );
  }
}
