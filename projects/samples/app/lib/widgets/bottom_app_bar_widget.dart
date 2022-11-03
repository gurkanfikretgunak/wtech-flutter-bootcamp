import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[500],
      showUnselectedLabels: false,
      selectedFontSize: 15,
      unselectedFontSize: 10,
      onTap: (onItemTapped),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_outlined), //Icon to be shown if not selected
          label: 'Home',
          activeIcon: Container(
            decoration: BoxDecoration(color: Colors.grey[800], shape: BoxShape.circle),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.home),
            ),
          ),
        ),
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          label: "Favorites",
          icon: const Icon(
            Icons.favorite_border,
          ),
        ),
        const BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.shopping_bag_outlined,
          ),
        ),
        const BottomNavigationBarItem(
          label: "Scan",
          icon: Icon(
            Icons.qr_code_scanner_sharp,
          ),
        ),
        const BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(
            Icons.person_outline_outlined,
          ),
        ),
      ],
    );
  }
}
