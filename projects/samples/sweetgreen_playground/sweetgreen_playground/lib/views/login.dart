import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 243, 232, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(244, 243, 232, 255),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text('login page')),
    );
  }
}
