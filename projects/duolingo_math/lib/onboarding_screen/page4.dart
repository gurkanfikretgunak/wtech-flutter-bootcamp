import 'package:duolingo_math/onboarding_screen/page5.dart';
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page5()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Image.asset("assets/images/getstarted.png"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Image.asset("assets/images/signin.png"),
            ),
          ),
        ],
      ),
    );
  }
}
