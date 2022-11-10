import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/views/authentication/sign_up_view.dart';
import 'package:coursera/widgets/button/custom_button_elevated.dart';
import 'package:coursera/widgets/button/custom_text_button.dart';
import 'package:coursera/widgets/custom_scaffold.dart';
import 'package:coursera/widgets/logo.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});
  ConstantsClass constant = ConstantsClass.instance;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: context.paddingMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: Logo()),
            const Expanded(
              child: CustomText(
                text:
                    "Take the world's best courses online from top universities and industry partners.",
                maxLines: 2,
                height: 1.4,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(child: _buildLoginButtons()),
            ),
            Expanded(
              child: _buildCreateAccountTextButton(context),
            ),
            Expanded(
              child: _buildTermsText(),
            )
          ],
        ),
      ),
    );
  }

  RichText _buildTermsText() {
    return RichText(
      text: TextSpan(
        text: 'By signing up to create an account I accept Courseras',
        style: TextStyle(
          color: constant.appBlack,
          decorationStyle: TextDecorationStyle.dashed,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Terms of Service, Privacy Policy',
            style: TextStyle(
              height: 1.5,
              color: constant.appBlue,
            ),
          ),
          const TextSpan(
            text: 'and',
          ),
          TextSpan(
            text: 'Honor Code',
            style: TextStyle(
              height: 1.5,
              color: constant.appBlue,
            ),
          ),
        ],
      ),
    );
  }

  _buildCreateAccountTextButton(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        children: [
          CustomTextButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            text: "New to Coursera?",
          ),
          context.emptySizedWidthBoxLow,
          CustomTextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpView(),
                ),
              );
            },
            text: "Create Account",
            padding: EdgeInsets.zero,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }

  Wrap _buildLoginButtons() {
    return Wrap(
      children: [
        CustomElevatedButton(
          borderSideColor: constant.appBlack,
          primary: constant.appWhite,
          textColor: constant.appBlack,
          icon: Icons.apple,
          text: "Continue with Apple",
          onPressed: () {},
        ),
        CustomElevatedButton(
          borderSideColor: constant.appGrey,
          primary: constant.appWhite,
          textColor: constant.appGrey,
          icon: FontAwesomeIcons.google,
          text: "Continue with Google",
          onPressed: () {},
        ),
        CustomElevatedButton(
          borderSideColor: constant.appBlue,
          primary: constant.appWhite,
          textColor: constant.appBlue,
          icon: FontAwesomeIcons.facebook,
          text: "Continue with Facebook",
          onPressed: () {},
        ),
        const Divider(),
        CustomElevatedButton(
          onPressed: () {},
          text: "Log in with Email",
        ),
      ],
    );
  }
}
