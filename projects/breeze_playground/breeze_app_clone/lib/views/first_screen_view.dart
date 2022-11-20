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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 248, 255),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 15,
                  width: double.infinity,
                  color: Color.fromARGB(255, 239, 240, 251),
                ),
              Image.asset("images/photo/1.png"),
              MyText("Take Care of your\nwell-being"),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: MyElevatedButton("Get started"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
