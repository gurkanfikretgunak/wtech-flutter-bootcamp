// ignore: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_basic/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        // ignore: sized_box_for_whitespace
        Container(
          // It will cover 20% of our total height
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.2 - 27,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    )),
              ),
              Positioned(
                child: Container(
                  height: 54,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
