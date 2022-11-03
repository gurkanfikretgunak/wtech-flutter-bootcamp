import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget getBottomNavigationBar() {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
    ]);
  }

  static Widget getMaterialBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text('MaterialBanner'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialBanner(
              content: const Text('This is a MaterialBanner'),
              leading: const CircleAvatar(child: Icon(Icons.info)),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static PreferredSizeWidget getAppBarWidget() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Wtech Flutter'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.face),
                  )
                ],
              )
            ],
          ),
        ));
  }

  static Widget getFloatingActionButtonWidget() {
    return FloatingActionButton(
      onPressed: () {
        if (kDebugMode) {
          print('FloatingActionButton pressed');
        }
      },
      child: const Icon(Icons.add),
    );
  }

  static Widget getBottomAppBarWidget() {
    return BottomAppBar(
      notchMargin: 12,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                if (kDebugMode) {
                  print('Pressed');
                }
              },
              icon: const Icon(Icons.menu)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
    );
  }
}
