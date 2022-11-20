import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomFloatingActionButton extends StatefulWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<CustomFloatingActionButton> createState() => _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState extends State<CustomFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color.fromARGB(255, 243, 175, 66),
      child: Icon(Icons.add),
      onPressed:() {
        if(kDebugMode) {
          print("FAB Button");
        }
      },
    );
  }
}