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
          primaryColor: Colors.white38,  accentColor: Colors.purpleAccent),
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Baslik'),
        ),
        body: Container(
          color: Colors.yellow,
          width: 200,
          height: 200,
          child: const Text(
            'Busra',
            textAlign: TextAlign.center,
            
          ),
          margin: const EdgeInsets.fromLTRB(50, 12, 12, 50),
          padding: const EdgeInsets.all(20),
          /* constraints:BoxConstraints(
              minHeight:100,
               minWidth: 100,
               maxHeight: 200,
               maxWidth: 200
                ), */
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.headphones,
            color: Colors.black,
          ),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
