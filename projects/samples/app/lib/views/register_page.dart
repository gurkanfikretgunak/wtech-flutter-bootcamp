import 'package:flutter/material.dart';
import 'package:samples/widgets/login_page_widgets.dart';

import '../widgets/register_page_widgets.dart';


final int fontColor = 0xFF02A28F;
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {

  late TextEditingController _usernamecontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }



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
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 8.0)),
              RegisterHeaderWidget(fontColor: fontColor),
              
            ],
          ),
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

