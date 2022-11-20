import 'package:breeze_app_clone/widgets/app_bar.dart';
import 'package:breeze_app_clone/widgets/bottom_nav_bar.dart';
import 'package:breeze_app_clone/widgets/feelings.dart';
import 'package:breeze_app_clone/widgets/floating_action_button.dart';
import 'package:breeze_app_clone/widgets/test_results_list.dart';
import 'package:breeze_app_clone/widgets/text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late TutorialCoachMark tutorialCoachMark;

  GlobalKey keyButton = GlobalKey();
  GlobalKey keyButton1 = GlobalKey();
  GlobalKey keyButton2 = GlobalKey();
  GlobalKey keyButton3 = GlobalKey();
  GlobalKey keyButton4 = GlobalKey();
  GlobalKey keyButton5 = GlobalKey();

  GlobalKey keyBottomNavigation1 = GlobalKey();
  GlobalKey keyBottomNavigation2 = GlobalKey();
  GlobalKey keyBottomNavigation3 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 240,
                width: double.infinity,
                color: Color.fromARGB(255, 249, 249, 249),
                child: Column(
                  key: keyButton,
                  children: [
                    Image.asset("images/happycloud.png",
                        width: 200, height: 100),
                    MyText("How are you today?"),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Feeling("images/unhappycloud.png", "Unhappy"),
                          Feeling("images/sadcloud.png", "Sad"),
                          Feeling("images/normalcloud.png", "Normal"),
                          Feeling("images/goodcloud.png", "Good"),
                          Feeling("images/happycloud.png", "Happy"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset("images/award.png",
                          height: 30, width: 30),
                    ),
                    Text(
                      "Test Results",
                      style: TextStyle(
                        color: Color.fromARGB(255, 124, 184, 250),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        "0/15 completed",
                        style: TextStyle(
                          color: Color.fromARGB(255, 120, 185, 250),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TestResultsList(key: keyButton1),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Stack(
                  key: keyButton4,
                  children: [
                    Image.asset("images/photo/c.jpg"),
                    Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(
                                  "Helping hand is here - contact\na real specialist now"),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Choose a specialist >",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 124, 184, 248),
                                onPrimary: Color.fromARGB(255, 254, 255, 254),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                key: keyButton2,
                children: [
                  Image.asset("images/photo/e.jpg"),
                  Padding(
                    padding: const EdgeInsets.only(top: 55, left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.lightbulb,
                                color: Color.fromARGB(255, 242, 174, 72)),
                            Text(
                              "Daily motivation",
                              style: TextStyle(
                                color: Color.fromARGB(255, 241, 175, 68),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Love recognises no barriers, it jumps\nhurdles, leaps fences, penetrates walls to\narrive at its destination, full of hope.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 42, 45, 89),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "Maya Angelou",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 114, 115, 150),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Share >"),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary:
                                        Color.fromARGB(255, 46, 42, 93),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 15),
                child: Row(
                  children: [
                    Icon(Icons.pie_chart,
                        color: Color.fromARGB(255, 96, 113, 219)),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Average mood",
                        style: TextStyle(
                          color: Color.fromARGB(255, 122, 184, 249),
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                key: keyButton3,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/photo/f.png", height: 100, width: 150),
                ],
              ),
              MyText("There are logged no moods yet"),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Log your mood to collect your history and get\npersonalized insights about your life",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 71, 69, 90),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 95, top: 20),
                child: SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Color.fromARGB(255, 96, 113, 219),
                    ),
                    child: Text("Log your mood >"),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showTutorial() {
    tutorialCoachMark.show(context: context);
  }

  void createTutorial() {
    tutorialCoachMark = TutorialCoachMark(
        targets: _createTargets(),
        colorShadow: Color.fromARGB(255, 94, 110, 209),
        focusAnimationDuration: Duration(milliseconds: 500),
        //focusAnimationDuration: Duration(milliseconds: 0),
        pulseEnable: false,
        /*textStyleSkip: TextStyle(
        
      ),*/
        textSkip: "Skip",
        paddingFocus: 1,
        opacityShadow: 0.9,
        onFinish: () {
          print("finish");
        },
        onClickTarget: (target) {
          print("onClickTarget: $target");
        },
        onClickTargetWithTapPosition: (target, tapDetails) {
          print("target: $target");
          print(
              "clicked at position local ${tapDetails.localPosition} - global: ${tapDetails.globalPosition}");
        },
        onClickOverlay: (target) {
          print("onClickOverlay: $target");
        },
        onSkip: () {
          print("skip");
        });
  }

  List<TargetFocus> _createTargets() {
    List<TargetFocus> targets = [];

    /*targets.add(
      TargetFocus(
        identify: "keyButton0",
        keyTarget: keyButton,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        //radius: 15,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              builder: ((context, controller) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Track your mood every\nday to know what affects\nit the most",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: IconButton(
                          icon: Icon(Icons.touch_app, color: Colors.white),
                          onPressed: () {
                            if(kDebugMode) {
                              //controller.next();
                              Scrollable.ensureVisible(context);
                            }
                          },
                        ),
                      ),
                      Text("Tap to continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                );
              })),
        ],
      ),
    );*/

    /*targets.add(
      TargetFocus(
        identify: "keyButton1",
        keyTarget: keyButton1,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        //radius: 15,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              builder: ((context, controller) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Gain useful insights from\nyour test results",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: IconButton(
                          icon: Icon(Icons.touch_app, color: Colors.white),
                          onPressed: () {
                            if(kDebugMode) {
                              //controller.next();
                            }
                          },
                        ),
                      ),
                      Text("Tap to continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                );
              })),
        ],
      ),
    );*/

    /*targets.add(
      TargetFocus(
        identify: "keyButton2",
        keyTarget: keyButton1,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        //radius: 15,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              builder: ((context, controller) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Draw inspiration from daily\nquotes",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: IconButton(
                          icon: Icon(Icons.touch_app, color: Colors.white),
                          onPressed: () {
                            if(kDebugMode) {
                              controller.next();
                            }
                          },
                        ),
                      ),
                      Text("Tap to continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                );
              })),
        ],
      ),
    );*/
    return targets;
  }
}
