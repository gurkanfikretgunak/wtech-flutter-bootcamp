import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/core/provider/sign_up_state.dart';
import 'package:coursera/views/authentication/authentication_custom_widget/terms_text.dart';
import 'package:coursera/widgets/button/custom_button_elevated.dart';
import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/custom_logo.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:coursera/widgets/text/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatefulWidget {
  SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  Constant constant = Constant.instance;
  bool isErrorNameTextFormField = false;
  TextEditingController nameController = TextEditingController();
  bool onError = false;

  bool nameValidation(BuildContext context) {
    if (nameController.text.length < 2 ||
        nameController.text.contains(RegExp(r'[0-9]')) ||
        nameController.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignUpState>(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(context: context),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: context.paddingMedium,
            child: SizedBox(
              height: context.dynamicHeight(0.8),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Logo(),
                    Wrap(
                      runAlignment: WrapAlignment.center,
                      runSpacing: context.dynamicHeight(0.02),
                      alignment: WrapAlignment.center,
                      children: [
                        const CustomText(
                          text: "Create an Account",
                          fontSize: 18,
                        ),
                        context.emptySizedHeightBoxNormal,
                        CustomTextFormField(
                          hintText: "Full name (Required)",
                          errorText: validationService.firstName.error,
                          onChanged: (String value) {
                            validationService.nameValidation(value);
                          },
                        ),
                        CustomTextFormField(
                          hintText: "Email (Required)",
                          errorText: validationService.email.error,
                          onChanged: (String value) {
                            validationService.emailValidation(value);
                          },
                        ),
                        CustomTextFormField(
                          hintText: "Password (Required)",
                          suffixIcon: FontAwesomeIcons.eyeSlash,
                          errorText: validationService.password.error,
                          onChanged: (String value) {
                            validationService.passwordValidation(value);
                          },
                        ),
                        CustomElevatedButton(
                          onPressed: () {},
                          text: "Create an Account",
                          primary: constant.appGreyDark,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Divider(color: constant.appGreyDark)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "or",
                                  style: TextStyle(
                                      color: constant.appGreyDark,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Divider(color: constant.appGreyDark)),
                          ],
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: CustomTextButton(
                            onPressed: () {},
                            text: "Sign up with your organization",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const TermsText(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
