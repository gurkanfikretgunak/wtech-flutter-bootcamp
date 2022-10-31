import 'package:flutter/material.dart';
import 'package:samples/widgets/custom_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomWidgets.getBottomAppBar(),
      floatingActionButton: CustomWidgets.getFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}