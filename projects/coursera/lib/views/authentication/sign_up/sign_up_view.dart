import 'package:coursera/views/authentication/authentication_custom_widget/authentication_form.dart';
import 'package:coursera/views/authentication/sign_up/sign_up_text_form_field_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../widgets/button/button_libary.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_or_text.dart';
import '../../../widgets/text/text_libary.dart';
import '../authentication_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AuthenticationView(
      appBar: CustomAppBar.customAppBar(context: context),
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            flex: 2,
            child: Center(
              child: CustomText(
                text: "Create an Account",
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepetitiveWidget(
              formKey: formKey,
              modelList:
                  SignUpTextFormFiledModel.buildTextFormFieldValue(context),
            ),
          ),
          context.emptySizedHeightBoxLow,
          const Expanded(
            child: CustomOrText(),
          ),
          Expanded(
            child: CustomTextButton(
              onPressed: () {},
              text: "Sign up with your organization",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
