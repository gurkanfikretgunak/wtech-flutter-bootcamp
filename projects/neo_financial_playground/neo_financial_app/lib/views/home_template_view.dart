import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:provider/provider.dart';
import '../core/provider/bottom_navigation_bar_state.dart';

class HomeTemplateView extends StatelessWidget {
  const HomeTemplateView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget state = context.watch<BottomNavigationBarState>().pages.elementAt(
          context.watch<BottomNavigationBarState>().currentPage,
        );
    return Scaffold(
      body: state,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
