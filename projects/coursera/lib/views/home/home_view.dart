import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/components/custom_bottom_navigation_bar.dart';
import '../../core/provider/bottom_nav_bar_state.dart';

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
