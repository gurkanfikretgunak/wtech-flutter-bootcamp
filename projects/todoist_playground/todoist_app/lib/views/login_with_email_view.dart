import 'package:flutter/material.dart';
import 'package:todoist_app/views/sign_up_page_view.dart';

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
    var yourEmailText = "YOUR EMAIL";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 120,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                CustomTextConstants().sheetCloseText,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              CustomTextConstants().whatEmailText,
              style: CustomTheme.customThemeData().textTheme.headline1,
            ),
          ]),
        ),
        SizedBox(
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                yourEmailText,
                style: CustomTheme.customThemeData().textTheme.subtitle1?.copyWith(),
                textAlign: TextAlign.left,
              ),
              const CustomInputDecoration(labelText: "Email"),
              CustomElevatedButton(
                buttonTexts: CustomTextConstants().buttonTextEmail,
                buttonColors: Colors.red,
                widName: SignInView(),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CustomInputDecoration extends StatelessWidget {
  const CustomInputDecoration({
    Key? key,
    required this.labelText,
  }) : super(key: key);
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey[350],
            fontSize: 14,
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 2,
            color: Colors.red,
          )),
        ),
      ),
    );
  }
}
