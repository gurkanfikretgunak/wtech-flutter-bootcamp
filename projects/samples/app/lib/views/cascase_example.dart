import 'dart:html';

import 'package:app/core/colors/container_base_color.dart';
import 'package:app/core/colors/text_title_base_color.dart';
import 'package:app/widgets/enum_widget.dart';
import 'package:flutter/material.dart';

import '../core/colors/text_base_color.dart';

class CascaseExamples extends StatelessWidget {
  const CascaseExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(ScreenStateWithValue.desktop.value),
          ScreenStatement.getMyCurrentState(ScreenState.largeScreen),
          Text(ContainerBaseColor().colorNamed()),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              gradient: ContainerBaseColor().gradient(),
            ),
          ),
          Text(
            "Cascade Text ",
            style: TextStyle(
              color: TextBaseColor().background(),
              background: Paint()..color = Colors.blue,
              fontSize: 50,

              // backgroundColor: Colors.black,
            ),
          ),
          Text(
            "Cascade Text ",
            style: TextStyle(
              backgroundColor: TextTitleBaseColor().background(),
              color: TextTitleBaseColor().forground(),

              fontSize: 50,

              // backgroundColor: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}
