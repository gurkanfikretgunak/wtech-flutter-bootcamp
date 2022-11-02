import 'package:app/core/themes/custom_theme_data.dart';
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
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        custom_theme_data(),
        Text(
          "L o a d i n g . . .",
          style: TextStyle(
            color: Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
      ]),
      bottomNavigationBar: CustomWidgets.customBottomNavBar(),
    );
  }
}
