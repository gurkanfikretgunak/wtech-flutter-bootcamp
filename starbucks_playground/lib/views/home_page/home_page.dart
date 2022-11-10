import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 198, 181, 231),
      // ignore: prefer_const_constructors
    
      body: Center(child: Container(child: const Text("Home Page Welcome "))),
    );
  }
}
