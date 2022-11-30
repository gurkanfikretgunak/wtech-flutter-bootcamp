import 'package:duolingo_math/pages/get_started_pages/get_started_page_1.dart';
import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(85, 174, 242, 1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 120, 40, 0),
            child: Image.asset("assets/images/logo.png"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                backgroundColor: Colors.white,
                shadowColor: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/getstarted');
            },
            child: Text(
              'GET STARTED',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                backgroundColor: Colors.blue,
                shadowColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/page5');
              },
              child: Text(
                'SIGN IN WITH DUOLINGO',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
