import 'package:flutter/material.dart';

import '../constants/custom_constants.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/custom_elevated_button.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({Key? key}) : super(key: key);

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Close",
            style: TextStyle(color: Colors.red),
          ),
        ),
        Text(
          "What's your email address?",
          style: CustomTheme.customThemeData().textTheme.headline1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Text(
            "YOUR EMAIL",
            style: CustomTheme.customThemeData().textTheme.subtitle1?.copyWith(),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 20),
        const CustomInputDecoration(),
        const SizedBox(height: 20),
        CustomElevatedButton(buttonTexts: CustomTextConstants().buttonTextEmail, buttonColors: Colors.red)
      ],
    );
  }
}

class CustomInputDecoration extends StatelessWidget {
  const CustomInputDecoration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 43,
      child: TextField(
        decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(
            color: Colors.grey[350],
            fontSize: 13,
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 1.5,
            color: Colors.red,
          )),
        ),
      ),
    );
  }
}
