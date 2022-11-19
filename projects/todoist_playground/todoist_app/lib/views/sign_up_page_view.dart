import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/core/provider/service_provider.dart';
import 'package:todoist_app/views/login_with_email_view.dart';
import 'package:todoist_app/views/welcome_page_view.dart';
import 'package:todoist_app/widgets/loading_widget.dart';
import '../constants/custom_constants.dart';
import '../core/provider/validation_provider.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/button_widgets/sign_up_button.dart';
import '../widgets/custom_methods.dart';
import '../widgets/input_decoration_widgets/input_decoration_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    final dataProvider = Provider.of<ServiceProvider>(context, listen: false);
    dataProvider.fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    FormProvider _formProvider = Provider.of<FormProvider>(context);

    var userEmailText = "Using nur@gmail.com to log in.";
    return Form(
      key: formKey,
      child: Padding(
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
                      deneme: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r"[a-zA-Z]+|\s"),
                        )
                      ],
                      onChanged: _formProvider.validateName,
                      errorText: _formProvider.name.error,
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
                      deneme: true,
                      onChanged: _formProvider.validatePassword,
                      errorText: _formProvider.password.error,
                    ),
                    Consumer<ServiceProvider>(
                      builder: (context, data, child) {
                        return Consumer<FormProvider>(
                          builder: (context, value, child) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: CustomAuthButton(
                                buttonTexts: CustomTextConstants.buttonTextEmail,
                                onPressed: () async {
                                  if (value.signUpValidate) {
                                    bool isCheck = await data.postUser(emailTextController, passwordTextController);
                                    if (isCheck) {
                                      // ignore: use_build_context_synchronously
                                      CustomMethods.settingModalBottomSheet(
                                        context,
                                        const LoadingPage(logText: "D"),
                                      );
                                    } else {
                                      // ignore: use_build_context_synchronously
                                      CustomMethods.settingModalBottomSheet(context, const LoginWithEmail());
                                    }
                                  }
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
