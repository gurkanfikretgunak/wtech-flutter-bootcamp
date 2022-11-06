import 'package:flutter/material.dart';

import '../widgets/custom_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        extendBody: true,
      floatingActionButton: CustomWidgets.getFloatingActionButton(),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Container(
        color: Colors.grey),
      bottomNavigationBar: CustomWidgets.getBottomAppbarWidget(),


    );
}
 
} 