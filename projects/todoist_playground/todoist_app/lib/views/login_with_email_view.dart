import 'package:flutter/material.dart';
import 'package:todoist_app/views/sign_up_page_view.dart';
import '../constants/custom_constants.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/input_decoration_widget.dart';
import '../widgets/button_widgets/login_button.dart';
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
              child: const Text(CustomTextConstants.sheetCloseText,
                  style: TextStyle(color: Colors.red, fontSize: 18), textAlign: TextAlign.left),
            ),
            Text(CustomTextConstants.whatEmailText, style: CustomTheme.customLightThemeData().textTheme.headline1),
          ]),
        ),
        SizedBox(
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(yourEmailText,
                  style: CustomTheme.customLightThemeData().textTheme.subtitle1, textAlign: TextAlign.left),
              CustomInputDecoration(labelText: "Email", controller: controller, deneme: false),
              CustomLogInButton(
                  buttonTexts: CustomTextConstants.buttonTextEmail,
                  hasDataWidget: const LoginPasswordView(),
                  nullDataWidget: const SignInView(),
                  emailController: controller)
            ],
          ),
        )
      ],
    );
  }
}
