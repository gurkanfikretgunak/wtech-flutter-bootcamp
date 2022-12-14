import 'package:flutter/material.dart';

import '../../core/components/custom_bottom_navigation_bar.dart';
import 'bottom_nav_bar_view_model.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});
  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  @override
  Widget build(BuildContext context) {
    var provider = BottomNavBarViewModel().of(context);
    return Scaffold(
      body: Center(
        child: provider.pageOptions.elementAt(
          provider.currentPage,
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
