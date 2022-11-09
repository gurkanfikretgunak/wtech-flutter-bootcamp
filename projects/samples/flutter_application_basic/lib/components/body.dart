// ignore: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_basic/constants.dart';
import 'package:flutter_application_basic/screens/home/home_screen.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // ignore: sized_box_for_whitespace
          HeaderWithSearchBox(size: size),
          Row(
            children: [
              const TitleWithCustomUnderline(text: "Öneriler"),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.green),
                onPressed: () {},
                child: const Text("Fazlası"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(right: kDefaultPadding / 4),
            height: 7,
            color: kPrimaryColor.withOpacity(0.2),
          ),
        )
      ]),
    );
  }
}
