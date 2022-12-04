import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:provider/provider.dart';

import '../core/provider/navigation_state.dart';

class HomeTemplateView extends StatelessWidget {
  const HomeTemplateView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget state = context.watch<NavigationState>().currentPage;
    return Scaffold(
      body: state,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
