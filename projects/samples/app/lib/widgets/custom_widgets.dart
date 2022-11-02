import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  static PreferredSize customAppBar() {
    return PreferredSize(
        // ignore: sort_child_properties_last
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[Colors.red, Colors.blue])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("Wtech App"),
                  ),
                  IconButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print("Icon Right Button");
                        }
                      },
                      icon: const Icon(Icons.face))
                ],
              ),
            ],
          ),
        ),
        preferredSize: const Size.fromHeight(70));
  }

  static Widget customBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.red,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.60),
      selectedFontSize: 15,
      unselectedFontSize: 10,
      onTap: (value) {
        // Respond to item press.
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          label: "FAV",
          icon: Icon(Icons.favorite),
        ),
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          label: "Music",
          icon: const Icon(Icons.music_note),
        ),
        const BottomNavigationBarItem(
          label: "Location",
          icon: Icon(Icons.location_on),
        ),
        const BottomNavigationBarItem(
          label: "Livbary Book",
          icon: Icon(Icons.library_books),
        ),
      ],
    );
  }

  static Widget getFloatingActionButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        if (kDebugMode) {
          print("FAB Button");
        }
      },
    );
  }

  static Widget getBottomAppbarWidget() {
    return BottomAppBar(
      notchMargin: 12,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              if (kDebugMode) {
                print("drawer Menu");
              }
            },
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              if (kDebugMode) {
                print("Search Button");
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              if (kDebugMode) {
                print("OverFlow Button");
              }
            },
          ),
        ],
      ),
    );
  }
}
