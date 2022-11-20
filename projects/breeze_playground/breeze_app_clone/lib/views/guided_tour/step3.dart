import 'package:breeze_app_clone/views/guided_tour/step4.dart';
import 'package:breeze_app_clone/views/guided_tour/step_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Step3 extends StatefulWidget {
  const Step3({Key? key}) : super(key: key);

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StepScreen("images/steps/3.png", "Gain useful insights from\nyour test results", "Step 3/6", 2),
      ),
    );
  }
}