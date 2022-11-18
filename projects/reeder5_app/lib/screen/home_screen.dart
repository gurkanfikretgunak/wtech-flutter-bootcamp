import 'package:flutter/material.dart';
import 'package:reeder5_app/screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  "What's new in",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black),
                ),
                subtitle: Text(
                  "Reeder 5",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black),
                ),
              ),
              ListTile(
                title: Text(
                  "Feeds (iCloud)",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle:
                    Text("Sync all your feeds and articles with iCloud. "),
                leading:
                    Icon(Icons.cloud, color: Colors.red[300]), //başına ikon
              ),
              ListTile(
                title: Text(
                  "Read Later (iCloud)",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                    "Reeder's built-in read later service now has support for tags."),
                leading: Icon(Icons.stars, color: Colors.red[300]),
              ),
              ListTile(
                title: Text(
                  "Mark as read on scroll",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                    "Yes! Reeder 5 finally adds an option to enable marking as read while scrolling."),
                leading: Icon(Icons.check_circle,
                    color: Colors.red[300]), //başına ikon
                //sonuna ikon
              ),
              ListTile(
                title: Text(
                  "Widgets",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                    "View most recent articles, configurable to only show items from feeds, folders, searches or tags."),
                leading:
                    Icon(Icons.widgets, color: Colors.red[300]), //başına ikon
              ),
              ListTile(
                title: Text(
                    "A lot of other changes and improvements like an updated UI, more article viewer options, collapsable feed list sections and more..."),
                //başına ikon
              ),
              const Divider(
                height: 100,
                thickness: 0.1,
                indent: 10,
                endIndent: 10,
                color: Colors.black,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                  primary: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );

    backgroundColor:
    Colors.grey[100];
  }
}
