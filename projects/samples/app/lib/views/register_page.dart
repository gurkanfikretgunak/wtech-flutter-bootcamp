import 'package:flutter/material.dart';
import 'package:samples/widgets/login_page_widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
    constraints: const BoxConstraints.expand(),
    decoration:  RegisterBoxDecoration(),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 600,
          width: 300,
          decoration: myBoxDecoration(),
        ),
      ),
    ),
    );
  }

  BoxDecoration RegisterBoxDecoration() {
    return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("lib/assets/images/backgroundImage.png"),fit: BoxFit.cover,
      opacity: 0.9,
    )
  );
  }
}