import 'package:flutter/material.dart';

class CustomNavigationBar {
  static Widget customnavigationbar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.location_city,
            color: Colors.grey,
          ),
          label: 'Lacation',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shop_2,
            color: Colors.grey,
          ),
          label: 'Shopping',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.health_and_safety,
            color: Colors.grey,
          ),
          label: 'Fav',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: 'Account',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.orangeAccent,
    );
  }
}
