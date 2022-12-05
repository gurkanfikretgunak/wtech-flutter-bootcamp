import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  const TestTitle(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 50,
      decoration: BoxDecoration(
          //color: Colors.red,
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(icon, color: Color.fromARGB(255, 94, 113, 220)),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Color.fromARGB(255, 41, 44, 84),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
