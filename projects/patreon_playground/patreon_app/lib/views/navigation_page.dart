import 'package:flutter/material.dart';
import 'package:patreon_app/core/provider/bottomNavBarProvider.dart';
import 'package:patreon_app/views/explore_page.dart';
import 'package:patreon_app/views/home_page.dart';
import 'package:patreon_app/views/messages_page.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  List pages = const [
    MyHomePage(),
    ExplorePage(),
    MessagesPage(),
  ];

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final screenindexprovider = Provider.of<BottomNavBarProvider>(context);
    int currentScreenIndex = screenindexprovider.fetchCurrentScreenIndex;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        elevation: 1.5,
        currentIndex: currentScreenIndex,
        onTap: (value) => screenindexprovider.updateScreenIndex(value),
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Icon((currentScreenIndex == 0)
                  ? Icons.table_chart
                  : Icons.table_chart_outlined),
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
            label: '',
            icon: Icon((currentScreenIndex == 1)
                ? Icons.explore
                : Icons.explore_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
                (currentScreenIndex == 2) ? Icons.mail : Icons.mail_outline),
          ),
        ],
      ),
      body: pages[currentScreenIndex],
    );
  }
}
