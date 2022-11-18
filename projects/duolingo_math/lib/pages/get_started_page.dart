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
        Text(
          "How old are you ??",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        TextFormField(
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
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)))),
        ),
        SizedBox(
          height: 50,
          width: 360,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.grey),
              child: Text("NEXT")),
        )
      ]),
    );
  }
}
