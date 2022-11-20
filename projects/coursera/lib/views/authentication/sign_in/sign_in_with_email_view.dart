import 'package:coursera/views/authentication/authentication_view.dart';
import 'package:coursera/widgets/button/button_libary.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/custom_or_text.dart';
import 'package:coursera/widgets/text/text_libary.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

class SignInWithEmail extends StatelessWidget {
  const SignInWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthenticationView(
      isTermsText: false,
      appBar: CustomAppBar.customAppBar(context: context),
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomText(text: 'Log into your account', fontSize: 16),
          CustomTextFormField(
            hintText: 'Email(Required)',
            onChanged: (p0) {},
          ),
          CustomTextFormField(
            hintText: 'Password(Required)',
            onChanged: (p0) {},
            suffixIcon: Icon(FontAwesomeIcons.eyeSlash),
            suffixIconSize: 18,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextButton(
              onPressed: loginWithOrganization,
              text: 'Forgot password?',
            ),
          ),
          CustomElevatedButton(
            onPressed: loginButton,
            text: 'Login',
          ),
          const CustomOrText(),
          CustomTextButton(
            onPressed: () {},
            text: 'Login with your organization',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          context.emptySizedHeightBoxHigh,
          context.emptySizedHeightBoxLow,
        ],
      ),
    );
  }

  void loginWithOrganization() {}

  void loginButton() {}
}
