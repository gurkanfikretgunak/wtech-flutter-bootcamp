import 'package:flutter/material.dart';

class AllScreen extends StatelessWidget {
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
              "All Items ",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("Archive"),
            leading: Icon(Icons.archive, color: Colors.grey[400]),
          ),
        ]),
      ),
    );
  }
}
