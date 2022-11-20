import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onboarding/onboarding.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(flex: 6),
                Text("Home", style: TextStyle(
                  color: Color.fromARGB(255, 41, 44, 84),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Spacer(flex: 4),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 240, 251),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 40,
                    height: 30,
                    child: IconButton(
                      icon: Icon(Icons.book, color: Color.fromARGB(255, 95, 113, 219)),
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        if(kDebugMode)
                          print("Icon Pressed");
                      }
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(70);
}