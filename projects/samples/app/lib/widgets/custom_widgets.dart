import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget customBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.pink,

      selectedFontSize: 15,
      unselectedFontSize: 10,
      onTap: (value) {
        // Respond to item press.
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          label: "shopping_basket",
          icon: Icon(Icons.shopping_basket),
        ),
      ],
    );
  }

  static PreferredSize customAppBar() {
    return PreferredSize(
        // ignore: sort_child_properties_last
        child: Container(
          decoration: BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: const Text("YEMEK DÜNYASI "),
                  ),
                  IconButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print("Icon Right Button");
                        }
                      },
                      icon: const Icon(Icons.book))
                ],
              ),
            ],
          ),
        ),
        preferredSize: const Size.fromHeight(70));
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
            icon: const Icon(Icons.cloud),
            onPressed: () {
              if (kDebugMode) {
                print("cloud Button");
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
