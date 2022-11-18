import 'package:coursera/widgets/custom_or_text.dart';

import '../authentication_view.dart';
import 'sign_up_view_model.dart';
import '../../../widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/constants/constant_libary.dart';
import '../../../widgets/button/button_libary.dart';
import '../../../widgets/text/text_libary.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
            primary: ColorConstant.instance.appGreyDark,
          ),
          const CustomOrText(),
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
