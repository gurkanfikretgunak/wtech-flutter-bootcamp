import 'package:breeze_app_clone/widgets/button.dart';
import 'package:breeze_app_clone/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onboarding/onboarding.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText("Take Care of your\nwell-being"),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: MyElevatedButton("Get started"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}