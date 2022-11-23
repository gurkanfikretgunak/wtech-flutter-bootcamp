import 'package:flutter/material.dart';

class Get_Started_Page_3 extends StatelessWidget {
  const Get_Started_Page_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/getstarted_2');
                  },
                  icon: Icon(Icons.arrow_back)),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.black, fontSize: 36),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 200,
            width: 340,
            child: Container(
              color: Colors.blue,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Create an account and save your progress",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        backgroundColor: Colors.white,
                        shadowColor: Colors.white),
                    onPressed: () {},
                    child: Text(
                      'CREATE AN ACCOUNT',
                      style: TextStyle(color: Colors.blue),
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
                      onPressed: () {},
                      child: Text(
                        'SIGN IN WITH DUOLINGO',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Spacer(),
            Text(
              "Your Course",
              style: TextStyle(fontSize: 26),
            ),
            Spacer()
          ],
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
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
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
        )
      ],
    ));
  }
}
