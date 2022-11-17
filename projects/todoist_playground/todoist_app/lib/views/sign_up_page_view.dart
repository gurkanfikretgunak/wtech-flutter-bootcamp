import 'package:flutter/material.dart';
import 'package:todoist_app/views/login_with_email_view.dart';
import 'package:todoist_app/widgets/loading_widget.dart';
import '../constants/custom_constants.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/button_widgets/sign_up_button.dart';
import '../widgets/input_decoration_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

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
          //userEmailText ?? "data"
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
                  CustomTextConstants.yourNameText,
                  style: CustomTheme.customLightThemeData().textTheme.subtitle1?.copyWith(),
                ),
                CustomInputDecoration(
                  labelText: "Name",
                  controller: emailTextController,
                ),
                Text(
                  CustomTextConstants.yourPasswordText,
                  style: CustomTheme.customLightThemeData().textTheme.subtitle1?.copyWith(),
                ),
                CustomInputDecoration(
                  controller: passwordTextController,
                  labelText: CustomTextConstants.passwordLabelText,
                  inputIcon: Icons.visibility_rounded,
                  unInputIcon: Icons.visibility_off_rounded,
                ),
                CustomSignUpButton(
                  emailController: emailTextController,
                  passwordController: passwordTextController,
                  buttonTexts: CustomTextConstants.buttonTextEmail,
                  hasDataWidget: const LoadingPage(logText: "DENEMEEEE"),
                  nullDataWidget: const LoginWithEmail(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}