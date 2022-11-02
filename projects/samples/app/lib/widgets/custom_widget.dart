import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget customAppBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text("Material Banner Widget"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialBanner(
              elevation: 4,
              backgroundColor: Colors.white,
              leadingPadding: EdgeInsets.all(10),
              contentTextStyle: TextStyle(fontWeight: FontWeight.bold),
              content: const Text('Error message text'),
              leading: const CircleAvatar(child: Icon(Icons.delete)),
              actions: [
                TextButton(
                  child: const Text('ACTION 1'),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('ACTION 2'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static PreferredSize customAppBar() {
    return PreferredSize(
      // ignore: sort_child_properties_last
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
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
      ]),
      preferredSize: const Size.fromHeight(30),
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
                }),
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  if (kDebugMode) {
                    print("Search Button");
                  }
                }),
            IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  if (kDebugMode) {
                    print("OverFlow Button");
                  }
                }),
          ],
        ));
  }
}
