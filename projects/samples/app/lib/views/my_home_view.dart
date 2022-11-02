import 'package:flutter/material.dart';
import 'package:samples/widgets/my_custom_widgets.dart';

class MyHomeView extends StatelessWidget {
  const MyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomWidgets.getCustomAppBar(),
      body: Column(
        children: [
          MyCustomWidgets.myContainer(),
          MyCustomWidgets.myDefPadding(),
          MyCustomWidgets.myContainer()
        ],
      ),


      bottomNavigationBar: MyCustomWidgets.myBottomAppBar(),
      floatingActionButton: MyCustomWidgets.myFloatingActionButton(),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}