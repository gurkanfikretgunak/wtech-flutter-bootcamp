import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/views/authentication/authentication_view.dart';
import 'package:coursera/views/authentication/sign_up/sign_up_view_model.dart';
import 'package:coursera/widgets/button/custom_button_elevated.dart';
import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/custom_divider.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:coursera/widgets/text/custom_text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  Constant constant = Constant.instance;

  @override
  Widget build(BuildContext context) {
    return AuthenticationView(
      appBar: CustomAppBar.customAppBar(context: context),
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          context.emptySizedHeightBoxLow,
          const CustomText(
            text: "Create an Account",
            fontSize: 18,
          ),
          context.emptySizedHeightBoxLow,
          SizedBox(
            height: context.dynamicHeight(0.27),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(
                height: context.dynamicHeight(0.025),
              ),
              itemCount:
                  SignUpViewModel.buildTextFormFieldValue(context).length,
              itemBuilder: (context, index) {
                var listItem =
                    SignUpViewModel.buildTextFormFieldValue(context)[index];
                return CustomTextFormField(
                  suffixIconColor: Colors.pink,
                  hintText: listItem['hintText'] as String?,
                  suffixIcon: listItem['suffixICon'] as IconData?,
                  errorText: listItem['errorText'] as String?,
                  onChanged: listItem['onChanged'] as Function(String),
                );
              },
            ),
          ),
          CustomElevatedButton(
            onPressed: () {},
            text: "Create an Account",
            primary: constant.appGreyDark,
          ),
          Row(
            children: [
              const Expanded(flex: 2, child: CustomDivider()),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: 'or',
                    color: constant.appGreyDark,
                  ),
                ),
              ),
              const Expanded(flex: 2, child: CustomDivider()),
            ],
          ),
          CustomTextButton(
            onPressed: () {},
            text: "Sign up with your organization",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          context.emptySizedHeightBoxNormal,
        ],
      ),
    );
  }
}
