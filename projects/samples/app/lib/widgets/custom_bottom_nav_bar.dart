import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.explore,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
