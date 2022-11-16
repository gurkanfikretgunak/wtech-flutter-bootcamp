import 'package:coursera/core/constants/constants.dart';
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

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  ConstantsClass constant = ConstantsClass.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(context: context),
        body: Padding(
          padding: context.paddingMedium,
          child: SingleChildScrollView(
            child: SizedBox(
              height: context.dynamicHeight(0.8),
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
                      const CustomTextFormField(
                        hintText: "Full name (Required)",
                      ),
                      const CustomTextFormField(
                        hintText: "Email (Required)",
                      ),
                      const CustomTextFormField(
                        hintText: "Password (Required)",
                        suffixIcon: FontAwesomeIcons.eyeSlash,
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
    );
  }
}
