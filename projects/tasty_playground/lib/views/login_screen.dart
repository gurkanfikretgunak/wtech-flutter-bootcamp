import 'package:flutter/material.dart';
import 'package:tasty_playground/views/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          color: Colors.white,
        ),
        Image.asset("assets/Tastytwo.jpg"),
        SizedBox(
          height: 5,
        ),
        Text('Yeah, I can cook that!'),
        SizedBox(
          height: 5,
        ),
        ElevatedButton(
          onPressed: () {
            // Bu satırda, navigator nesnesini kullanarak geçerli sayfadan başka bir sayfaya geçme işlemi gerçekleştirilir
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text('Get started'),
        ),
        SizedBox(
          height: 5,
          child: Row(children: [
            Text('!'),
            TextButton(onPressed: () => null, child: const Text("Sing in"))
          ]),
        ),
      ]),
    );
  }
}
