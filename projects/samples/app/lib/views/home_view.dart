import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitleText: "Search",
      body: Column(
        children: [],
      ),
    );
  }
}
