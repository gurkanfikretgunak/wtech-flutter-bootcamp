import 'package:flutter/material.dart';
import '../widgets/custom_bottom_navigation_bar_widget.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: const Scaffold(
          body: Center(
            child: Text('Card Page'),
          ),
          bottomNavigationBar: CustomBottomNavBar(),
        ));
  }
}
