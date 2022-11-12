import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Anasayfa!",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.blue[700],
    );
  }
}
