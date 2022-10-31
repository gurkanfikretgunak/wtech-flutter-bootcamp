import 'package:app/widgets/customWidgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomAppBarWidget(),
      //floatingActionButton: CustomWidgets.getFloatingActionButton(),
      floatingActionButton: FloatingActionButton(onPressed: null),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
