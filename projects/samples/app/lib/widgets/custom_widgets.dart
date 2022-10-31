import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget getAppBanner() {
    return Column(
      children: [
        const Text("Material Banner Widget"),
        const Padding(padding: EdgeInsets.all(8)),
        MaterialBanner(
          content: const Text("Error Message"),
          leading: const CircleAvatar(
            child: Icon(Icons.warning),
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text("Action 1")),
            TextButton(onPressed: () {}, child: const Text("Action 2"))
          ],
        )
      ],
    );
  }

  static PreferredSize getAppBarWidget() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text("WTech App"),
                IconButton(onPressed: () {}, icon: const Icon(Icons.face))
              ],
            )
          ],
        ));
  }

  static Widget getFloatingActionButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }

  static Widget getBottomAppBarWidget() {
    return BottomAppBar(
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
