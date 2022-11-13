import 'package:flutter/material.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isHidden = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
                color: Colors.grey[700],
              ))
        ],
        backgroundColor: Colors.brown[50],
        automaticallyImplyLeading: false,
        elevation: 0.3,
        centerTitle: true,
        title: Center(
          child: AppbarTextStyle(dunkin: "SİGN UP", size: 20),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 10),
        TextfieledStyle(
          hint: "First Name",
          obcur: false,
        ),
        TextfieledStyle(
          hint: "Last Name",
          obcur: false,
        ),
        TextfieledStyle(
          hint: "Email Address",
          obcur: false,
        ),
        TextfieledStyle(
          hint: "Password",
          obcur: true,
        )
      ]),
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
