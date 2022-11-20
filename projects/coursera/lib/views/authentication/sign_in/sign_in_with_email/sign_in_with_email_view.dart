import 'package:coursera/views/authentication/authentication_custom_widget/authentication_form.dart';
import 'package:coursera/views/authentication/authentication_view.dart';
import 'package:coursera/views/authentication/sign_in/sign_in_with_email/sign_in_with_email_view_model.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/custom_or_text.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constant_libary.dart';
import '../../../../widgets/button/button_libary.dart';
import '../../../../widgets/text/text_libary.dart';

class SignInWithEmailView extends StatefulWidget {
  const SignInWithEmailView({super.key});

  @override
  State<SignInWithEmailView> createState() => _SignInWithEmailViewState();
}

class _SignInWithEmailViewState extends State<SignInWithEmailView> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AuthenticationView(
      isTermsText: false,
      appBar: CustomAppBar.customAppBar(context: context),
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            flex: 3,
            child: Center(
              child: CustomText(text: 'Log into your account', fontSize: 16),
            ),
          ),
          Flexible(
            flex: 7,
            child: RepetitiveWidget(
              isLogin: true,
              formKey: formKey,
              modelList:
                  SignInWithEmailViewModel.buildTextFormFieldValue(context),
              forgotPasswordButton: Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: CustomText(
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.instance.appBlue,
                          text: 'Forgot Password?',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(flex: 2, child: CustomOrText()),
          Expanded(
            flex: 2,
            child: CustomTextButton(
              onPressed: () {},
              text: 'Login with your organization',
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
