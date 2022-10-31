import 'package:flutter/material.dart';
import 'package:wtech_bootcamp_learn/widgets/custom_widget.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomWidgets.customAppBar(),
      bottomNavigationBar: CustomWidgets.getBottomAppBarWidget(),
      floatingActionButton: CustomWidgets.getFloatingActionButton(),
      body: Container(
        color: Colors.yellow,

      ),
    );
  }
}

