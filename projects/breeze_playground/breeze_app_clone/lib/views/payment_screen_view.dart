import 'package:breeze_app_clone/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close,
                          color: Color.fromARGB(255, 56, 53, 62)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Restore",
                          style: TextStyle(
                            color: Color.fromARGB(255, 112, 119, 142),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: MyText("This is how a free\nversion works"),
              ),
              Container(
                height: 230,
                width: 270,
                color: Colors.grey[50],
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(255, 248, 225, 155),
                          ),
                          height: 230,
                          width: 40,
                          //color: Color.fromARGB(255, 248, 225, 155),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(255, 96, 113, 219),
                          ),
                          height: 200,
                          width: 40,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 30),
                                child:
                                    Icon(Icons.lock_open, color: Colors.white),
                              ),
                              //Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 40),
                                child: Icon(Icons.notifications_active,
                                    color: Colors.white),
                              ),
                              //Spacer(),
                              Icon(Icons.done_outline_outlined,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 50),
                              child: Text(
                                "Today",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 97, 113, 221),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                "Full access to Breeze",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 41, 85),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 50),
                              child: Text(
                                "Day 5",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 97, 113, 221),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                "Reminder about the end of a trial\nperiod",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 41, 85),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 50),
                              child: Text(
                                "Day 7",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 97, 113, 221),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                "Automatic debiting of an account.\nCancel anytime at least 24 hours\nbefore your subscription expires",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 41, 85),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "per\nCancel anytime. No commitment.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 94, 112, 223),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey[50],
                      height: 20,
                      width: 300,
                      child: Text("How can I cancel?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 43, 43, 81),
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.grey[50],
                    height: 80,
                    width: 300,
                    child: Text(
                        "It's easy! Open the Google Play app and tap\nthe profile icon at the top right corner. Tap\nPayments & subscriptions, then Subscriptions.\nSelect Breeze, tap Cancel and follow the\ninstructions. Done!", style: TextStyle(
                          color: Color.fromARGB(255, 43, 44, 72),
                        ),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 237, 239, 254),
                  ),
                  height: 35,
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/g_icon.png"),
                      Text("Secured with Google", style: TextStyle(color: Color.fromARGB(255, 95, 115, 216))),
                    ],                  
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 249, 216, 123),
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text("Start your free trial week"),
                    onPressed: () {

                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons.done, color: Color.fromARGB(255, 46, 42, 78)),
                  ),
                  Text("No payment now!", style: TextStyle(color: Color.fromARGB(255, 44, 41, 88)),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}