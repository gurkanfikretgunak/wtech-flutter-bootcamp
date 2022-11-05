import 'package:app/widgets/enum_widget.dart';
import 'package:flutter/material.dart';

class CascadeExampleView extends StatelessWidget {
  const CascadeExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cascade Example View',
              style: TextStyle(
                  foreground: Paint()
                    ..color = Colors.black
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2,
                  // background: Paint()..color = Colors.red,
                  fontSize: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                child: ScreenStatement.getMyCurrentState(ScreenState.mobile),
              ),
            ),
            Container(
              color: Colors.green,
              child: Text(ScreenStateWithValue.desktop.value),
            ),
          ],
        ),
      ),
    );
  }
}
