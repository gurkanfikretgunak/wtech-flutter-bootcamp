
import 'package:flutter/material.dart';

class CustomAppbar {
  static PreferredSize customAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(children: [
            const Text(
              "It's a great day for coffe ",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: const Icon(
                Icons.coffee_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
            Spacer(),
          ])),
    );
  }
}
