import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestResultsList extends StatefulWidget {
  const TestResultsList({Key? key}) : super(key: key);

  @override
  State<TestResultsList> createState() => _TestResultsListState();
}

class _TestResultsListState extends State<TestResultsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 150,
            width: 120,
            child: Card(
              color: Color.fromARGB(255, 235, 247, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Image.asset("images/happycloud.png", width: 100, height: 100),
                  Text(
                    "Beck Depression\nInventory",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(255, 38, 46, 82)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            width: 120,
            child: Card(
              color: Color.fromARGB(255, 235, 247, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Image.asset("images/happycloud.png", width: 100, height: 100),
                  Text(
                    "Personality Test",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(255, 38, 46, 82)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            width: 120,
            child: Card(
              color: Color.fromARGB(255, 235, 247, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Image.asset("images/happycloud.png", width: 100, height: 100),
                  Text(
                    "Beck Anxiety\nInventory",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(255, 38, 46, 82)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
