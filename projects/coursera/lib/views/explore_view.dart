import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar.customAppBar(
        leading: CustomTextButton(
          onPressed: () {},
          text: "Switch Catalog",
        ),
        context: context,
      )),
    );
  }
}
