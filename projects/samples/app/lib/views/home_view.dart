import 'package:app/widgets/custom_bottom_navigation_bar.dart';
import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(),
      body: Container(
        //TODO: This body side will be update.
        color: Colors.pink,
        child: const Center(
          child: Text(
            'Letgo Clone',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      floatingActionButton: Container(
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: CustomWidgets.customFloatingActionButton(),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
