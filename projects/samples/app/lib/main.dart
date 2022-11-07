import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal, accentColor: Colors.purpleAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Baslik'), 
        ),
        body: Text('Wtech Bootcamp', 
        style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w200),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.headphones,
            color:Colors.black,
            ),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
