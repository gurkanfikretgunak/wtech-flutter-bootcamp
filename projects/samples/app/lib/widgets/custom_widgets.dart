import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget customBottomNavBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.explore,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.red,
              ))
        ],
      ),
    );
  }

  static AppBar customAppBar() {
    return AppBar(
      title: const Text(
        'Bakkal',
        style: TextStyle(color: Colors.white, fontSize: 24),
        textAlign: TextAlign.end,
      ),
      backgroundColor: Colors.red,
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Icon(Icons.search),
        ),
      ],
    );
  }

  static Widget customDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.red,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.delivery_dining),
            title: Text('Order Status'),
          ),
          ListTile(
            leading: Icon(Icons.history_rounded),
            title: Text('Order History'),
          ),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text('Help & Support'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }

  static Widget getFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.shopping_cart_rounded,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }
}
