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
            onPressed: () {
              Navigator.pushNamed(context, '/getstarted');
            },
            child: Text(
              'GET STARTED',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page5');
            },
            child: Text(
              'SIGN IN',
            ),
          ),
        ],
      ),
    );
  }
}
