import 'package:flutter/material.dart';
import 'unread_screen.dart';
import 'all_screen.dart';
import 'home_screen.dart';
import 'starred_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(left: 50),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StarredScreen()),
                    );
                  },
                  icon: const Icon(Icons.star),
                ),
              ),
              label: 'STARRED'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UnreadScreen()),
                  );
                },
                icon: const Icon(Icons.circle),
              ),
              label: 'UNREAD'),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(right: 50),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllScreen()),
                    );
                  },
                  icon: const Icon(Icons.notes),
                ),
              ),
              label: 'ALL'),
        ],
      ),
    );
  }
}
