import 'package:breeze_app_clone/widgets/app_bars/tests_stats_app_bar.dart';
import 'package:breeze_app_clone/widgets/test_screen_widgets/inner_beauty_card.dart';
import 'package:breeze_app_clone/widgets/test_screen_widgets/mental_state_card.dart';
import 'package:breeze_app_clone/widgets/test_screen_widgets/most_popular_card.dart';
import 'package:breeze_app_clone/widgets/test_screen_widgets/personal_life_card.dart';
import 'package:breeze_app_clone/widgets/test_screen_widgets/tests_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestsScreen extends StatefulWidget {
  const TestsScreen({Key? key}) : super(key: key);

  @override
  State<TestsScreen> createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: TestsStatsAppBar("Tests"),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: screenHeight - 350,
                      width: screenWidth - 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 234, 183, 89),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("RECOMMENDED TO YOU",
                                style: TextStyle(color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("Personality Test",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Do you want to know what kind of a\nperson you are? This test gives you a\nclear answer and reveals your personality\ntype based on Jung's Types Indicator.",
                              style: TextStyle(
                                color: Color.fromARGB(255, 253, 250, 237),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 223, 205, 97),
                                    //color: Colors.red,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text("15 min", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 30,
                                    width: 95,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 223, 205, 97),
                                      //color: Colors.red,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text("70 questions", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                child: Text("Take test >"),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  primary: Colors.white,
                                  onPrimary: Color.fromARGB(255, 43, 41, 83),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: screenWidth,
                    height: 50,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Color.fromARGB(255, 239, 142, 137)),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("Most popular", style: TextStyle(
                                  color: Color.fromARGB(255, 239, 142, 137),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MostPopularCard(),
                TestTitle(Icons.hexagon, "Check your mental state"),
                MentalStateCard(),
                TestTitle(Icons.book, "Explore your personal life"),
                PersonalLifeCard(),
                TestTitle(Icons.gps_fixed, "Discover your inner beauty"),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: InnerBeautyCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
