import 'package:flutter/material.dart';
import 'home_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _fabButton,
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            AppBar(
              leading: CircleAvatar(),
              title: Text("Profil"),
              centerTitle: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget get _fabButton => FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      );
}
