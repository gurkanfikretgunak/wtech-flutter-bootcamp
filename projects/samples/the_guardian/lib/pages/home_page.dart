import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Upgrade to Premium',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
          ),
          backgroundColor: Color(0xFF1A237E),
          leading: Builder(
            builder: (BuildContext context) {
              return ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Support us',
                  style: TextStyle(color: Colors.yellow),
                ),
              );
            },
          ),
          actions: [
            Text(
              'The Guardian',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
