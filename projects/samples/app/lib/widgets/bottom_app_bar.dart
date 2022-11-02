import 'package:app/views/login.dart';
import 'package:app/views/sign_in.dart';

import 'package:flutter/material.dart';

class ChangePages extends StatefulWidget {
  const ChangePages({Key? key}) : super(key: key);

  @override
  State<ChangePages> createState() => _ChangePagesState();
}

class _ChangePagesState extends State<ChangePages> {
  int selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const LoginView(),
    const SignInView(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies_outlined),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
