import 'package:breeze_app_clone/views/guided_tour/step2.dart';
import 'package:breeze_app_clone/views/guided_tour/step_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    /*Future.delayed(Duration.zero, () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Step2()));
    });*/

    /*WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Step2()));
    });*/

    return SafeArea(
      child: Scaffold(
          body: StepScreen(
              "images/steps/1.png",
              "Track your mood every\nday to know what affects\nit the most",
              "Step 1/6",
              0)),
    );
  }
}
