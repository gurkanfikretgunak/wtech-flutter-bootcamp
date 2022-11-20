import 'package:breeze_app_clone/views/guided_tour/step2.dart';
import 'package:breeze_app_clone/views/guided_tour/step3.dart';
import 'package:breeze_app_clone/views/guided_tour/step4.dart';
import 'package:breeze_app_clone/views/guided_tour/step5.dart';
import 'package:breeze_app_clone/views/guided_tour/step6.dart';
import 'package:breeze_app_clone/views/screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StepScreen extends StatefulWidget {
  final String imagePath;
  final String text;
  final String stepText;
  final int index;
  //final void callback;

  const StepScreen(
    this.imagePath,
    this.text,
    this.stepText,
    this.index,
  );

  @override
  State<StepScreen> createState() => _StepScreenState();
}

class _StepScreenState extends State<StepScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    String imagePath = widget.imagePath;
    String text = widget.text;
    String stepText = widget.stepText;
    //void callback = widget.callback;

    void func1() {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Step2())));
    }

    void func2() {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Step3())));
    }

    void func3() {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Step4())));
    }

    void func4() {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Step5())));
    }

    void func5() {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Step6())));
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 94, 110, 209),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25, top: 20),
                        child: ElevatedButton(
                          child: Text("Skip",
                              style: TextStyle(fontWeight: FontWeight.normal)),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 102, 119, 211),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenView()));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 130, 143, 230),
                  ),
                  height: screenHeight - 150,
                  width: screenWidth - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 35, left: 15),
                              child: Text(stepText,
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight / 3,
                        width: double.infinity,
                        //color: Color.fromARGB(255, 249, 249, 249),
                        child: FittedBox(
                            fit: BoxFit.fill, child: Image.asset(imagePath)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: IconButton(
                          icon: Icon(Icons.touch_app, color: Colors.white),
                          onPressed: () {
                            switch (widget.index) {
                              case 0:
                                func1();                                
                                break;
                              case 1:
                                func2();
                                break;
                              case 2:
                                func3();
                                break;
                              case 3:
                                func4();
                                break;
                              case 4:
                                func5();
                                break;
                              default:
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenView()));
                            }
                          },
                        ),
                      ),
                      Text(
                        "Tap to continue",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
