import 'package:flutter/material.dart';
import 'package:flutter_application_basic/core/colors/container_base_color.dart';
import 'package:flutter_application_basic/widgets/enum_widgets.dart';

class CascadeExamples extends StatelessWidget {
  const CascadeExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(ScreenStateWithValue.desktop.value),
          getMyCurrentState2(ScreenState.desktop),
          Container(
            child: ScreenStatement.getMyCurrentState(ScreenState.desktop),
          ),
          Text(
            "Cascade Text",
            style: TextStyle(
              foreground: Paint()..color = Colors.white,
              background: Paint()
                ..blendMode = BlendMode.colorBurn
                ..color = Colors.purple
                ..style = PaintingStyle.fill,
              fontSize: 50,
              color: Colors.red,
              //backgroundColor: Colors.black,
            ),
          ),
          Text(ContainerBaseColor().colorNamed()),
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                gradient: ContainerBaseColor().gradient(),
              )),
        ]),
      ),
    );
  }
}
