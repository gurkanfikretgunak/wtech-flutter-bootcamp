import 'package:flutter/material.dart';

class Get_Started_Page_2 extends StatelessWidget {
  const Get_Started_Page_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Text("What do you want to learn?"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: SizedBox(
                  height: 100,
                  width: 360,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 360,
                        child: ElevatedButton(
                            onPressed: () {},
                            style:
                                ElevatedButton.styleFrom(primary: Colors.blue),
                            child: Text("Brain Training")),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                width: 360,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    child: Text("Elementary Math")),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: SizedBox(
                height: 50,
                width: 360,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/getstarted_3');
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: Text("NEXT")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
