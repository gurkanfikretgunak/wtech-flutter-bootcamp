import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/views/sign_up_page_view.dart';
import '../constants/custom_constants.dart';
import '../core/provider/service_provider.dart';
import '../core/provider/validation_provider.dart';
import '../core/themes/custom_themes.dart';
import '../widgets/button_widgets/sign_up_button.dart';
import '../widgets/custom_methods.dart';
import '../widgets/input_decoration_widgets/input_decoration_widget.dart';
import 'password_page_view.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({Key? key}) : super(key: key);

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late FormProvider _formProvider;

  @override
  Widget build(BuildContext context) {
    FormProvider _formProvider = Provider.of<FormProvider>(context);

    var yourEmailText = "YOUR EMAIL";

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
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(yourEmailText,
                    style: CustomTheme.customLightThemeData().textTheme.subtitle1, textAlign: TextAlign.left),
                CustomInputDecoration(
                  labelText: "Email",
                  controller: emailController,
                  deneme: false,
                  keyForm: formKey,
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
                            bool isCheck = await data.userController(emailController);
                            if (value.emailValidate) {
                              if (isCheck) {
                                // ignore: use_build_context_synchronously
                                CustomMethods.settingModalBottomSheet(context, const LoginPasswordView());
                              } else {
                                // ignore: use_build_context_synchronously
                                CustomMethods.settingModalBottomSheet(context, const SignInView());
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
    );
  }
}
