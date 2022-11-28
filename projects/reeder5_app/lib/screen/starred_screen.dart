import 'package:flutter/material.dart';

class StarredScreen extends StatelessWidget {
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
              "Starred ",
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
          ListTile(
            title: Text(
              "Tags ",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("polyamory"),
            leading: Icon(Icons.tag, color: Colors.grey[400]),
          ),
          ListTile(
            title: Text(
              "Sites ",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("bbc.com"),
            leading: Icon(Icons.rectangle, color: Colors.grey[400]),
          ),
        ]),
      ),
    );
  }
}
