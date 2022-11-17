import 'package:flutter/material.dart';
import 'package:todoist_app/views/pick_theme_page_view.dart';
import '../constants/custom_constants.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/custom_input_decoration_widget.dart';
import '../widgets/custom_red_button.dart';

class LoginPasswordView extends StatefulWidget {
  const LoginPasswordView({Key? key}) : super(key: key);

  @override
  State<LoginPasswordView> createState() => _LoginPasswordViewState();
}

class _LoginPasswordViewState extends State<LoginPasswordView> {
  @override
  Widget build(BuildContext context) {
    var usersText = "Using nur@gmail.com to log in.";
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
              CustomTextConstants.logWithPasswordText,
              style: CustomTheme.customLightThemeData().textTheme.headline1,
            ),
          ]),
        ),
        Text(
          usersText,
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
                  CustomTextConstants.yourPasswordText,
                  style: CustomTheme.customLightThemeData().textTheme.subtitle1,
                ),
                const CustomInputDecoration(
                  labelText: CustomTextConstants.passwordLabelText,
                  inputIcon: Icons.visibility_rounded,
                  unInputIcon: Icons.visibility_off_rounded,
                ),
                const CustomRedButton(
                  buttonTexts: CustomTextConstants.buttonTextEmail,
                  hasDataWidget: ThemeSwitcher(),
                  nullDataWidget: LoginPasswordView(),
                ),
                Center(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          CustomTextConstants.forgotPasswordText,
                          style: CustomTheme.customLightThemeData().textTheme.subtitle1?.copyWith(fontSize: 13),
                        )))
              ],
            ),
          ),
        )
      ],
    );
  }
}
