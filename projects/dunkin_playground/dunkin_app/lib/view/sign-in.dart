import 'package:dunkin_app/view/home.dart';
import 'package:dunkin_app/view/onboard.dart';
import 'package:dunkin_app/view/sing_up.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        automaticallyImplyLeading: false,
        elevation: 0.3,
        centerTitle: true,
        title: const Center(
          child: AppbarTextStyle(dunkin: "SECURE SIGN-IN", size: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/Signin1.png"),
              ),
              SizedBox(height: 20),
              StlyleText(
                name: "AUTHENTICATE YOUR",
                size: 24,
              ),
              StlyleText(name: "ACCOUNT", size: 24),
              SizedBox(height: 10),
              Text(
                "We'll be sedding you a 6-digit security code to the phone number bellow",
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 6),
                child: Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const TextField(
                          decoration: InputDecoration(
                              filled: true,
                              labelText: "Your Mobile Number",
                              labelStyle: TextStyle(color: Colors.black54),
                              fillColor: Colors.white,
                              border: InputBorder.none)),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Message and data rates may apply",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
