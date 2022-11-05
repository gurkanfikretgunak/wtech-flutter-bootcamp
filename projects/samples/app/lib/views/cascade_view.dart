import 'package:app/core/colors/container_base_color.dart';
import 'package:app/core/colors/text_base_color.dart';
import 'package:app/core/colors/text_title_base.dart';
import 'package:app/widgets/enums.dart';
import 'package:flutter/material.dart';

class CascadeViews extends StatelessWidget {
  const CascadeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.transparent),

      body: Center(
        child: Column(
          children: [
            Text(ScreenStateWithValue.desktop.value),
            Text(ScreenStateWithValue.mobile.value),
            Text(ScreenStateWithValue.tablet.value),
            ScreenStatement.getMyCurrentState(ScreenState.largeScreen),
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
            Text(ContainerBaseColor().colorNamed()),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                gradient: ContainerBaseColor().gradient(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
