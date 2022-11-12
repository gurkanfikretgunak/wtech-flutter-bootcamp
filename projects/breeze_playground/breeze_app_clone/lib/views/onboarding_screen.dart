import 'package:breeze_app_clone/widgets/onboarding_continue_button.dart';
import 'package:breeze_app_clone/widgets/onboarding_screen_button.dart';
import 'package:breeze_app_clone/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late Material materialButton;
  late int index;

  final onboardingPagesList = [
    PageModel(
      widget: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              children: [
                //Image.asset("images/deleteImages/lambo.jpg", height: 300, width: 300),
                MyText("Take tests to know\nyourself better"),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: OnboardingButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: Center(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              MyText("Gain knowledge about\nyour mental health"),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: OnboardingButton(),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: Center(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              MyText("Explore your\nfeelings"),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: OnboardingButton(),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: Center(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: MyText("Make Breeze\na habit"),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: 200,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 154, 139, 247),
                        child: Icon(Icons.check,
                            color: Color.fromARGB(255, 252, 253, 254)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Explore a free set\nof key features",
                          style: TextStyle(
                            color: Color.fromARGB(255, 43, 45, 87),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: 200,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 154, 139, 247),
                        child: Icon(Icons.check,
                            color: Color.fromARGB(255, 252, 253, 254)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Track your emotions\nand express gratitude",
                          style: TextStyle(
                            color: Color.fromARGB(255, 43, 45, 87),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromARGB(255, 154, 139, 247),
                      child: Icon(Icons.check,
                          color: Color.fromARGB(255, 252, 253, 254)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Track your mood to get\nregular stats",
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 45, 87),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: OnboardingButton(),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: Center(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              MyText("Turn on notifications\nto stay tuned"),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "You'll get reminders and\nuplifting quotes and keep up\nwith all updates",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 87),
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: OnboardingContinueButton(),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
        ),
      ),
    );
  }
}