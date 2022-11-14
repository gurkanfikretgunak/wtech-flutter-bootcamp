import 'package:flutter/material.dart';
import 'package:todoist_app/views/sign_up_page_view.dart';

import '../constants/custom_constants.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/custom_model_bottom_elevated_button.dart';
import 'password_page_view.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({Key? key}) : super(key: key);

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  TextEditingController controller = TextEditingController();

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
              CustomInputDecoration(labelText: "Email", controller: controller),
              CustomElevatedButton(
                buttonTexts: CustomTextConstants().buttonTextEmail,
                buttonColors: Colors.red,
                hasDataWidget: const LoginPasswordView(),
                nullDataWidget: const SignInView(),
                controller: controller,
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomInputDecoration extends StatefulWidget {
  const CustomInputDecoration({
    Key? key,
    required this.labelText,
    this.inputIcon,
    this.unInputIcon,
    this.controller,
  }) : super(key: key);
  final String labelText;
  final IconData? inputIcon;
  final IconData? unInputIcon;
  final TextEditingController? controller;

  @override
  State<CustomInputDecoration> createState() => _CustomInputDecorationState();
}

class _CustomInputDecorationState extends State<CustomInputDecoration> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 45,
      child: TextField(
        controller: widget.controller,
        obscureText: obscureText,
        autofocus: true,
        // keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: widget.labelText,
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
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: obscureText
                ? Icon(
                    widget.unInputIcon,
                    color: Colors.grey,
                  )
                : Icon(widget.inputIcon),
          ),
        ),
      ),
    );
  }
}
