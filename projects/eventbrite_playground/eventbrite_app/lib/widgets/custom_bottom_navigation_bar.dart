import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/search');
            break;
          case 2:
            Navigator.pushNamed(context, '/favorite');
            break;
          case 3:
            Navigator.pushNamed(context, '/ticket');
            break;
          case 4:
            Navigator.pushNamed(context, '/profile');
            break;
        }
      },
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      selectedFontSize: 0,
      selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.confirmation_number_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined),
          label: '',
        ),
      ],
    );
  }
}

enum BottomNavigationItem { home, search, favorite, ticket, profile }

extension BottomNavigationItemExtension on BottomNavigationItem {
  int get index {
    switch (this) {
      case BottomNavigationItem.home:
        return 0;
      case BottomNavigationItem.search:
        return 1;
      case BottomNavigationItem.favorite:
        return 2;
      case BottomNavigationItem.ticket:
        return 3;
      case BottomNavigationItem.profile:
        return 4;
    }
  }
}
