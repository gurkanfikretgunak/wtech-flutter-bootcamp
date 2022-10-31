import 'package:app/widgets/customWidgets/bottom_app_bar.dart';
import 'package:app/widgets/customWidgets/custom_appbar.dart';
import 'package:app/widgets/customWidgets/floating_action_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: const BottomAppBarWidget(),
      //floatingActionButton: CustomWidgets.getFloatingActionButton(),
      floatingActionButton: const FloatingActionButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(color: Colors.orange.shade200),
    );
  }
}
