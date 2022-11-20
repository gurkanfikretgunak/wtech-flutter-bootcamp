import 'package:breeze_app_clone/views/guided_tour/step4.dart';
import 'package:breeze_app_clone/views/guided_tour/step_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Step5 extends StatefulWidget {
  const Step5({Key? key}) : super(key: key);

  @override
  State<Step5> createState() => _Step5State();
}

class _Step5State extends State<Step5> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StepScreen("images/steps/5.png", "Explore regular stats to get a\nclearer picture of your\nemotional state", "Step 5/6", 4),
      ),
    );
  }
}