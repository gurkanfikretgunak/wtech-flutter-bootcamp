import 'package:dunkin_app/view/navigationbar.dart';
import 'package:dunkin_app/view/onboard.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 1.5,
                toolbarHeight: 65,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("DUNKİN'",
                        style: TextStyle(
                            color: Colors.orange[800],
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 22)),
                    Text(" REWARDS",
                        style: TextStyle(
                            color: Colors.pink[800],
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            fontSize: 22))
                  ],
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                        size: 30,
                      ))
                ],
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black,
                    ))),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 360,
                    color: Colors.brown[50],
                    child: Column(
                      children: [
                        SizedBox(height: 12),
                        Center(
                            child: StlyleText(
                                name: "GOOD EVENING, JON!", size: 22)),
                        SizedBox(height: 6),
                        StlyleText(
                            name: "It's a gerat day to start earning points!",
                            size: 16),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Container(
                                height: 130,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 0.3, color: Colors.grey),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10.0, left: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          StlyleText(
                                              name: "REWARD POINTS", size: 11),
                                          StlyleText(
                                              name: "1 Dolar = 10 POINTS",
                                              size: 11)
                                        ],
                                      ),
                                      Stack(children: [
                                        Align(
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 14),
                                            child: Container(
                                              width: double.infinity,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                  color: Colors.brown[50],
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              ColumnStyle(sayi: "150"),
                                              ColumnStyle(sayi: "250"),
                                              ColumnStyle(sayi: "400"),
                                              ColumnStyle(sayi: "500"),
                                              ColumnStyle(sayi: "600"),
                                              ColumnStyle(sayi: "700"),
                                              ColumnStyle(sayi: "800"),
                                              ColumnStyle(sayi: "900"),
                                            ],
                                          ),
                                        ),
                                      ]),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              Text(
                                                " Total points",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          buttonText(),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Container(
                                height: 110,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 0.3, color: Colors.grey),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            StlyleText(
                                                name: "UNLOCK BOOSTED STATUS",
                                                size: 15),
                                            SizedBox(height: 15),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                StlyleText(
                                                    name: "12 ", size: 15),
                                                Text(
                                                  "visits in a calender month earms",
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "12 points par dollar.",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Container(
                                          height: 75,
                                          width: 0.3,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            StlyleText(
                                                name: "VISITS", size: 15),
                                            Text(
                                              "0",
                                              style: TextStyle(
                                                  color: Colors.pink[800],
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            StlyleText(name: "OF 12", size: 12)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            InkWell(
                              child: Text("Learn more",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.black,
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarTextStyle(dunkin: "MENU", size: 14),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //listview kullanılacak
                          children: [
                            MenuStyle(
                              food: "Iced Drinks",
                              photos: "assets/images/IceDrinks.png",
                            ),
                            MenuStyle(
                              food: "Hot Drinks",
                              photos: "assets/images/hotDrinks.png",
                            ),
                            MenuStyle(
                              food: "Donut & Backery",
                              photos: "assets/images/Donut.png",
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        AppbarTextStyle(dunkin: "FEATURED", size: 14),
                        SizedBox(height: 10),
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/donutcoffe.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: NavigationBarStyle()));
  }
}

class buttonText extends StatelessWidget {
  const buttonText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.pink[800]),
          child: TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent)),
              onPressed: () {},
              child: Center(
                child: Text(
                  "REWARD OPTIONS",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800,
                      fontSize: 12),
                ),
              )),
        ),
      ],
    );
  }
}

class ColumnStyle extends StatelessWidget {
  const ColumnStyle({
    Key? key,
    required this.sayi,
  }) : super(key: key);
  final String sayi;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          sayi,
          style: TextStyle(color: Colors.grey[400], fontSize: 8),
        ),
        SizedBox(height: 2),
        CircleAvatar(
          radius: 3,
          backgroundColor: Colors.grey[400],
        )
      ],
    );
  }
}
