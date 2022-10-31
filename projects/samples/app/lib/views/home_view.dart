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
      appBar: CustomWidgets.getCustomAppBar(),

      body: Container(
        color: Colors.white,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomWidgets.getCustomAppBanner(),
            CustomWidgets.getCustomAppBanner()
          ],
        )
      ),
    );
  }
}