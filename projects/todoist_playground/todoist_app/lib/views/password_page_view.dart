import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/widgets/custom_methods.dart';
import 'package:todoist_app/widgets/loading_widget.dart';
import '../constants/custom_constants.dart';
import '../core/provider/service_provider.dart';
import '../core/provider/validation_provider.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/button_widgets/sign_up_button.dart';
import '../widgets/input_decoration_widgets/input_decoration_widget.dart';

class LoginPasswordView extends StatefulWidget {
  const LoginPasswordView({Key? key}) : super(key: key);

  @override
  State<LoginPasswordView> createState() => _LoginPasswordViewState();
}

class _LoginPasswordViewState extends State<LoginPasswordView> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var usersText = "Using nur@gmail.com to log in.";
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20,
        end: 20,
        bottom: 30,
        top: 8,
      ),
      child: Column(
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
                    deneme: true,
                  ),
                  Consumer<ServiceProvider>(
                    builder: (context, data, child) {
                      return Consumer<FormProvider>(
                        builder: (context, value, child) {
                          return CustomAuthButton(
                            buttonTexts: CustomTextConstants.buttonTextEmail,
                            onPressed: () async {
                              bool isCheck = await data.userController(passwordController);
                              if (value.passwordValidate) {
                                if (isCheck) {
                                  // ignore: use_build_context_synchronously
                                  CustomMethods.settingModalBottomSheet(
                                      context,
                                      const LoadingPage(
                                        logText: "deneme",
                                      ));
                                } else {
                                  // ignore: use_build_context_synchronously
                                  CustomMethods.settingModalBottomSheet(context, const LoginPasswordView());
                                }
                              }
                            },
                          );
                        },
                      );
                    },
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
      ),
    );
  }
}
