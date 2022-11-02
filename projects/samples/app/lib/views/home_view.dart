import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomWidgets.customAppBar(),
        body: const Center(
          child: Text(
            'Hello',
            style: TextStyle(color: Colors.black),
          ),
        ),
        bottomNavigationBar: CustomWidgets.customBottomNavBar());
  }
}
