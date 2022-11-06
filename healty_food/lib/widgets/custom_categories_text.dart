import 'package:flutter/material.dart';

class CustomCategories {
  static Widget customCategories() {
    return // ignore: prefer_const_constructors
        Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.centerLeft,

      // ignore: prefer_const_constructors
      child: Align(
        alignment: Alignment.centerLeft,
        child: const Text(
          "Categories",
          style: TextStyle(color: Colors.black, fontSize: 13),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
