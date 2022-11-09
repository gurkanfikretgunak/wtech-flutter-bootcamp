import 'package:coursera/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Column(
      children: const [
        Text("deneme"),
      ],
    ));
  }
}
