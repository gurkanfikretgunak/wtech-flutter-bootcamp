import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 150, 16, 0),
          child: Text(
            "How old are you ?",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
          child: TextField(
            keyboardType: TextInputType.number,
            autofocus: true,
            decoration: InputDecoration(
                hintText: "Age in years",
                hintStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(8.0)))),
          ),
        )
      ]),
    );
  }
}
