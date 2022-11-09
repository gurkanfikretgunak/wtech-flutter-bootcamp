// ignore: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_basic/constants.dart';
import 'package:flutter_application_basic/screens/home/home_screen.dart';

import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';

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
          TitleWithMoreBtn(
            title: "Öneriler",
            press: () {},
          ),
          // it will coner 40% of our total width
          Container(
            width: size.width * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/image_1.png"),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
