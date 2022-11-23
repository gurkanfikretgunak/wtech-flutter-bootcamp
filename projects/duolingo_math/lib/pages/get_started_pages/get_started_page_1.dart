import 'package:flutter/material.dart';

class Get_Started_Page_1 extends StatefulWidget {
  const Get_Started_Page_1({super.key});

  @override
  State<Get_Started_Page_1> createState() => _Get_Started_Page_1State();
}

class _Get_Started_Page_1State extends State<Get_Started_Page_1> {
  late TextEditingController _agecontroller;
  @override
  void initState() {
    super.initState();
    _agecontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(4, 200, 4, 16),
        child: Column(children: [
          Text(
            "How old are you ??",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
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
          Spacer(),
          SizedBox(
            height: 50,
            width: 360,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/getstarted_2');
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text("NEXT")),
          )
        ]),
      ),
    );
  }
}
