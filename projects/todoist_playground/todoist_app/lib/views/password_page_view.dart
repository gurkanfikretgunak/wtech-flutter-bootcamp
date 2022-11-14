import 'package:flutter/material.dart';
import 'package:todoist_app/views/after_login_page_view.dart';

import '../constants/custom_constants.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/custom_elevated_button.dart';
import 'login_with_email_view.dart';

class LoginPasswordView extends StatefulWidget {
  const LoginPasswordView({Key? key}) : super(key: key);

  @override
  State<LoginPasswordView> createState() => _LoginPasswordViewState();
}

class _LoginPasswordViewState extends State<LoginPasswordView> {
  @override
  Widget build(BuildContext context) {
    var yourEmailText = "YOUR PASSWORD";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 95,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios)),
            Text(
              "Log in with your password",
              style: CustomTheme.customThemeData().textTheme.headline1,
            ),
          ]),
        ),
        Text(
          "Using nur@gmail.com to log in.",
          style: CustomTheme.customThemeData().textTheme.subtitle1?.copyWith(fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SizedBox(
            height: 230,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "YOUR PASSWORD",
                  style: CustomTheme.customThemeData().textTheme.subtitle1?.copyWith(),
                ),
                const CustomInputDecoration(
                  labelText: "Password",
                  inputIcon: Icons.visibility_rounded,
                  unInputIcon: Icons.visibility_off_rounded,
                ),
                CustomElevatedButton(
                  buttonTexts: CustomTextConstants().buttonTextEmail,
                  buttonColors: Colors.red,
                  hasDataWidget: const WhiteCircularPage(logText: "If at first you don't succeed,laugh until you do."),
                  nullDataWidget: const LoginPasswordView(),
                ),
                Center(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot your password",
                          style: CustomTheme.customThemeData().textTheme.subtitle1?.copyWith(fontSize: 13),
                        )))
              ],
            ),
          ),
        )
      ],
    );
  }
}
