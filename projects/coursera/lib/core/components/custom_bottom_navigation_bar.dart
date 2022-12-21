import 'package:coursera/views/bottom_nav_bar/bottom_nav_bar_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined),
          label: 'Learn',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
      currentIndex: context.watch<BottomNavBarViewModel>().currentPage,
      onTap: context.read<BottomNavBarViewModel>().changePage,
    );
  }
}
