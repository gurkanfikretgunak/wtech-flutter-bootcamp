import 'package:flutter/material.dart';

import '../constants/custom_constants.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/custom_model_bottom_elevated_button.dart';
import 'after_login_page_view.dart';
import 'login_with_email_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    var userEmailText = "Using nur@gmail.com to log in.";
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
              "Sign Up",
              style: CustomTheme.customLightThemeData().textTheme.headline1,
            ),
          ]),
        ),
        Text(
          userEmailText,
          style: CustomTheme.customLightThemeData().textTheme.subtitle1?.copyWith(fontSize: 18),
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
                  CustomTextConstants().yourNameText,
                  style: CustomTheme.customLightThemeData().textTheme.subtitle1?.copyWith(),
                ),
                const CustomInputDecoration(labelText: "Name"),
                Text(
                  CustomTextConstants().yourPasswordText,
                  style: CustomTheme.customLightThemeData().textTheme.subtitle1?.copyWith(),
                ),
                CustomInputDecoration(
                  labelText: CustomTextConstants().passwordLabelText,
                  inputIcon: Icons.visibility_rounded,
                  unInputIcon: Icons.visibility_off_rounded,
                ),
                CustomElevatedButton(
                  buttonTexts: CustomTextConstants().buttonTextEmail,
                  buttonColors: Colors.red,
                  hasDataWidget: const WhiteCircularPage(
                      logText: "If you don't know where you are going, you might wind up someplace else. -YOGI BERRA"),
                  nullDataWidget: const SignInView(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
