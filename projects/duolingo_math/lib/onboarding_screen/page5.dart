import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  late TextEditingController _agecontroller;
  @override
  void initState() {
    super.initState();
    _agecontroller = TextEditingController();
  }

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
          child: TextFormField(
            controller: _agecontroller,
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
        ),
        InkWell(
          autofocus: true,
          child: Container(
            height: 50,
            width: 358,
            color: Colors.grey.shade400,
            child: Center(
              child: Text(
                "NEXT",
                style: TextStyle(fontSize: 30, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
