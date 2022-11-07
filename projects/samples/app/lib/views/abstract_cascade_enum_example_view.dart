import 'package:app/core/colors/container_base_color.dart';
import 'package:app/core/colors/text_base_color.dart';
import 'package:app/widgets/enum_widgets.dart';
import 'package:flutter/material.dart';

class CascaseExamples extends StatelessWidget {
  const CascaseExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(ContainerBaseColor().colorNamed()),
            Text(ScreenStateWithValue.desktop.value),
            // ScreenStatement.getMyCurrentState(ScreenState.desktop),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                gradient: ContainerBaseColor().gradient(),
              ),
            ),
            Text(
              "Cascade Text",
              style: TextStyle(
                  color: TextBaseColor().background(),
                  //      background: Paint()..colorFilter,
                  background: Paint()
                    ..style = PaintingStyle.fill
                    ..color = Colors.pink
                    ..blendMode = BlendMode.color
                    ..filterQuality = FilterQuality.high),
            ),
            Text(
              "Cascade Text",
              style: TextStyle(
                backgroundColor: TextBaseColor().background(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
