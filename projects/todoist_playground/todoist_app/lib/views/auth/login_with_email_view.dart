import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/views/auth/sign_up_page_view.dart';
import '../../constants/text/auth_constants.dart';
import '../../core/provider/service_provider.dart';
import '../../core/provider/validation_provider.dart';
import '../../widgets/button_widgets/sign_up_button.dart';
import '../../widgets/custom_methods.dart';
import '../../widgets/input_decoration_widgets/input_decoration_widget.dart';
import 'password_page_view.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({Key? key}) : super(key: key);

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  TextEditingController emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    FormProvider _formProvider = Provider.of<FormProvider>(context);
    return Scaffold(
      body: Wrap(
        children: [
          Padding(
            padding: CustomMethods.sheetBottomValue(),
            child: Column(
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
                            style: TextStyle(color: Colors.red, fontSize: 18), textAlign: TextAlign.left)),
                    Text(CustomTextConstants.whatEmailText, style: Theme.of(context).textTheme.headline1),
                  ]),
                ),
                SizedBox(
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(CustomTextConstants.yourEmailText,
                          style: Theme.of(context).textTheme.subtitle1, textAlign: TextAlign.left),
                      CustomInputDecoration(
                        labelText: "Email",
                        controller: emailController,
                        deneme: false,
                        onChanged: _formProvider.validateEmail,
                        errorText: _formProvider.email.error,
                      ),
                      Consumer<ServiceProvider>(
                        builder: (context, data, child) {
                          return Consumer<FormProvider>(
                            builder: (context, value, child) {
                              return CustomAuthButton(
                                buttonTexts: CustomTextConstants.buttonTextEmail,
                                onPressed: () async {
                                  if (value.emailValidate) {
                                    bool isCheck = await data.fetchUser(emailController.text);
                                    if (isCheck) {
                                      // ignore: use_build_context_synchronously
                                      CustomMethods.settingModalBottomSheet(
                                          context, LoginPasswordView(emailController: emailController));
                                    } else {
                                      // ignore: use_build_context_synchronously
                                      CustomMethods.componentSnackbar(context, "No Email Address!", "Sign Up >");
                                      await loginAction();

                                      // ignore: use_build_context_synchronously
                                      CustomMethods.settingModalBottomSheet(
                                          context, SignInView(emailController: emailController));
                                    }
                                  }
                                },
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
