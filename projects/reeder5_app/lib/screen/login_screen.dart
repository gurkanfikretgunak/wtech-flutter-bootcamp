import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  "Add Account...",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black),
                ),
              ),
              ListTile(
                title: Text(
                  "ICLOUD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.grey[400]),
                ),
                //başına ikon
              ),
              ListTile(
                title: Text(
                  "Feeds ",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("iCloud"),
                leading: Icon(Icons.cloud, color: Colors.grey[400]),
              ),
              ListTile(
                title: Text(
                  "Read Later ",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("iCloud"),
                leading: Icon(Icons.stars, color: Colors.grey),
              ),
              ListTile(
                title: Text(
                  "LOCAL",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.grey[400]),
                ),
                //başına ikon
              ),
              ListTile(
                title: Text(
                  "Feeds",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("On My iPhone"),
                leading: Icon(Icons.rss_feed, color: Colors.grey), //başına ikon
                //sonuna ikon
              ),
              ListTile(
                title: Text(
                  "READ LATER SERVICES",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.grey[400]),
                ),
                //başına ikon
              ),
              ListTile(
                title: Text(
                  "Pockets",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("getpocket.com"),
                leading: Icon(Icons.beenhere, color: Colors.grey), //başına ikon
              ),
              ListTile(
                title: Text(
                  "Instapaper",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("instapaper.com"),
                leading:
                    Icon(Icons.format_italic, color: Colors.grey), //başına ikon
              ),
              ListTile(
                title: Text(
                  "SERVICES",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.grey[400]),
                ),
                //başına ikon
              ),
              ListTile(
                title: Text(
                  "Feedbin",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("feedbin.com"),
                leading:
                    Icon(Icons.lunch_dining, color: Colors.grey), //başına ikon
              ),
            ],
          ),
        ),
      ),
    );
  }
}
