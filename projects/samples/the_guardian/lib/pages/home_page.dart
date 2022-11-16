import 'package:flutter/material.dart';
import 'package:the_guardian/pages/discover_page..dart';
import 'package:the_guardian/pages/live_page.dart';
import 'package:the_guardian/pages/menu_page.dart';
import 'package:the_guardian/pages/saved_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _page = [
    HomePage(),
    LivePage(),
    DiscoverPage(),
    SavedPage(),
    MenuPage(),
  ];

  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text("Home Page"),
    );
  }

  Widget _buildBody() {
    return _page[_selectedPageIndex];
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: 'Live',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.travel_explore),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.save),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Menu',
        ),
      ],
      currentIndex: _page,
      onTap: _sayfaDegistir,
    );
  }

  void _sayfaDegistir(int newIndex) {
    setState(() {
      _page = newIndex;
    });
  }
}
