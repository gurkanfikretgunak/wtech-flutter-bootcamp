import 'package:coursera/provider/bottom_nav_bar_state.dart';

import 'package:coursera/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: context.watch<BottomNavigationBarState>().pageOptions.elementAt(
              context.watch<BottomNavigationBarState>().currentPage,
            ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
