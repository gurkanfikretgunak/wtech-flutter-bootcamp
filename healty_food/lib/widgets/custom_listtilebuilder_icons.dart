import 'package:flutter/material.dart';

class CustomListIcons {
  static customListIcons() {
    List<String> categories = [
      "Breakfast",
      "Lunch",
      "Bevegares",
      "Snack",
      "Patato",
      "Bred"
    ];
    return const SizedBox(
      height: 30,
      // ignore: dead_code
    );
    // ignore: dead_code
    SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  child: Icon(Icons.food_bank)),
              Text(categories[index]),
            ],
          ),
        ),
        itemCount: categories.length,
      ),
    );
  }
}
