import 'package:coursera/provider/p_bottom_nav_bar.dart';
import 'package:coursera/views/learn_view.dart';
import 'package:coursera/views/explore_view.dart';
import 'package:coursera/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static const List<Widget> _widgetOptions = <Widget>[
    ProfileView(),
    ExploreView(),
    LearnView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(
          context.watch<ColorState>().currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: context.watch<ColorState>().currentPage,
        onTap: context.read<ColorState>().getMyColorStageOne,
      ),
    );
  }
}
