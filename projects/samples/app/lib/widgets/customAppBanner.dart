import 'package:flutter/material.dart';

class CustomAppBanner {
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
}
