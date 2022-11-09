import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/widgets/custom_scaffold.dart';
import 'package:kartal/kartal.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          Padding(
            padding: context.paddingMedium,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Image(
                  image: AssetImage("assets/divider.png"),
                ),
                Image(
                  image: AssetImage("assets/logo.png"),
                ),
                Image(
                  image: AssetImage("assets/divider.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
