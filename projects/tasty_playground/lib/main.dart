import 'package:flutter/material.dart';
import 'package:tasty_playground/views/splash_view.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Anasayfa()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/splashscreen.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
