import 'package:flutter/material.dart';

class CustomButtonNavigationBar extends StatefulWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  State<CustomButtonNavigationBar> createState() => _CustomButtonNavigationBarState();
}

class _CustomButtonNavigationBarState extends State<CustomButtonNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          label: "FAV",
          icon: Icon(Icons.favorite),
        ),
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          label: "Music",
          icon: Icon(Icons.music_note),
        ),
        BottomNavigationBarItem(
          label: "Location",
          icon: Icon(Icons.location_on),
        ),
        BottomNavigationBarItem(
          label: "Livbary Book",
          icon: Icon(Icons.library_books),
        ),
      ],
    );
  }
}
