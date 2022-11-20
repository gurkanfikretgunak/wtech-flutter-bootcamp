import 'package:breeze_app_clone/views/guided_tour/step4.dart';
import 'package:breeze_app_clone/views/guided_tour/step_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Step6 extends StatefulWidget {
  const Step6({Key? key}) : super(key: key);

  @override
  State<Step6> createState() => _Step6State();
}

class _Step6State extends State<Step6> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StepScreen("images/steps/6.png", "Find a therapist to get\nyou through when you feel\ndown", "Step 6/6", 5),
      ),
    );
  }
}