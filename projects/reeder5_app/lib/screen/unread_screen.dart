import 'package:flutter/material.dart';

class UnreadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
      ),
      body: Center(
        child: ListView(children: [
          ListTile(
            title: Text(
              "Pocket",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
          ),
          ListTile(
            title: Text(
              "Reading List ",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            title: Text(
              "Filters ",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("Articles"),
            leading: Icon(Icons.article, color: Colors.grey[400]),
          ),
        ]),
      ),
    );
  }
}
