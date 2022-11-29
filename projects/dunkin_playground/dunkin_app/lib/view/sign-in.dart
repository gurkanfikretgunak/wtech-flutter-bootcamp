import 'package:dunkin_app/view/sing_up.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}

class TextfieledStyle extends StatelessWidget {
  const TextfieledStyle({
    Key? key,
    required this.hint,
    required this.obcur,
  }) : super(key: key);
  final String hint;
  final bool obcur;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
      child: Expanded(
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
              obscureText: obcur,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                hintText: hint,
              )),
        ),
      ),
    );
  }
}
