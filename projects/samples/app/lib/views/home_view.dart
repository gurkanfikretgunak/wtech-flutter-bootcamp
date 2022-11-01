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
          //TODO: Body will be updated
          ),
      bottomNavigationBar: CustomWidgets.customBottomNavBar(),
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
