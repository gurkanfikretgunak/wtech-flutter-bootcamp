import 'package:flutter/material.dart';

class CustomAppbar {
  static PreferredSize customAppbar() {
    return PreferredSize(
      preferredSize: const Size(100, 100),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Healty Food",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
              color: Colors.black),
        ],
      ),
    );
  }
}
