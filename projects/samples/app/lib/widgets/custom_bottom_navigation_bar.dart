import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: curIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => _onItemTapped(value),
        items: const [
          BottomNavigationBarItem(
            label: 'ANA SAYFA',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'SOHBETLER',
            icon: Icon(
              Icons.message,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: 'SAT',
          ),
          BottomNavigationBarItem(
            label: 'İLANLARIM',
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            label: 'HESAP',
            icon: Icon(
              Icons.person,
            ),
          ),
        ]);
  }

  void _onItemTapped(int index) {
    if (index != 2) {
      if (kDebugMode) {
        debugPrint('Button index: $index');
        setState(() {
          curIndex = index;
        });
      }
    } else {
      //TODO: Same reaction with floating action button which has camera icon on center
    }
  }
}
