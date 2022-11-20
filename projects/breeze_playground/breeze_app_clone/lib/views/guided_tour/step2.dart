import 'package:breeze_app_clone/views/guided_tour/step3.dart';
import 'package:breeze_app_clone/views/guided_tour/step_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Step2 extends StatefulWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StepScreen("images/steps/2.png", "As you add your mood,\nyou get a tip of the day for\nfeeling better", "Step 2/6", 1)
        ),
    );
  }
}