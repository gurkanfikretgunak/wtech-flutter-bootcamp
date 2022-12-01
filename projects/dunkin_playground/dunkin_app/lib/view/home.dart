import 'dart:ui';

import 'package:dunkin_app/view/onboard.dart';
import 'package:dunkin_app/view/sing_up.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//imagelar düzeltilecek
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          toolbarHeight: 315,
          leadingWidth: 4,
          backgroundColor: Colors.brown[50],
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
                color: Colors.black,
                iconSize: 28,
              ),
            ],
          ),
          title: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                AppbarTextStyle(
                  dunkin: "START RUNNIN' ON",
                  size: 26,
                ),
                Text(
                  "DUNKİN'",
                  style: TextStyle(
                      color: Colors.orange[800],
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 12),
                AppbarTextStyle(
                  dunkin: "Join the Dunkin' Rewards program to enjoy free",
                  size: 14,
                ),
                AppbarTextStyle(
                    dunkin: "Beherages, special offers and more.", size: 14),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Learn more",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        color: Colors.grey[600],
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.pink[800]),
                          child: TextButton(
                            style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()),
                              );
                            },
                            child: Text(
                              "JOIN NOW",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17),
                            ),
                          )),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                          height: 35,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: TextButton(
                            style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent)),
                            onPressed: () {},
                            child: Text(
                              "GUEST ORDER",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17),
                            ),
                          )),
                    ),
                    //resposive olacak
                  ],
                ),
                SizedBox(height: 12),
                Container(
                    height: 1, width: double.infinity, color: Colors.grey[350]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account",
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black54),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                AppbarTextStyle(dunkin: "MENU", size: 14),
                SizedBox(height: 8),
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
                          image: AssetImage("assets/images/donutcoffe.jpg"),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuStyle extends StatelessWidget {
  const MenuStyle({
    Key? key,
    required this.food,
    required this.photos,
  }) : super(key: key);
  final String food;
  final String photos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                  image: AssetImage(photos), fit: BoxFit.cover)),
        ),
        SizedBox(height: 8),
        Text(
          food,
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class AppbarTextStyle extends StatelessWidget {
  const AppbarTextStyle({
    Key? key,
    required this.dunkin,
    required this.size,
  }) : super(key: key);
  final String dunkin;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      dunkin,
      style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w800,
          color: Colors.black,
          fontSize: size),
    );
  }
}
