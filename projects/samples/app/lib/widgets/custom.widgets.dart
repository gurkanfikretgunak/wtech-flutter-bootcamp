

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets{
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
              contentTextStyle: TextStyle (fontWeight: FontWeight.bold),
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
          )
        ],
        ),
    );
  }

  

 static Widget getFloatingActionButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: (){
        if (kDebugMode) {
          print("FAB BUTTON");
    }
  },
  );
  }




 static Widget getBottomAppbarWidget(){
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