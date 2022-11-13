import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/widget/button/login_sign_up_button.dart';
import 'package:robinhood_playground/core/widget/custom_divider.dart';
import 'package:robinhood_playground/product/page_transition.dart';

class LoginSignupDivider extends StatelessWidget {
  const LoginSignupDivider({
    this.isBackGroundGreen = false,
    super.key,
  });
  final bool isBackGroundGreen;
  final Color bitterDandelion = const Color(0xFFbcf0b0);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
            height: 20,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 170),
              child: PageTransition(),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _LoginButton(
                  isBackGroundGreen: isBackGroundGreen,
                  bitterDandelion: bitterDandelion),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              const _SignupButton(),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 35),
          child: CustomDivider(dividerColor: Colors.black),
        ),
      ],
    );
  }
}

class _SignupButton extends StatelessWidget {
  const _SignupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginSignupButton(
        text: LoginSignupName.signup.getName(),
        onPressed: () {},
        backgroundColor: LoginSignupColor.black.getValue(),
        foregroundColor: LoginSignupColor.white.getValue());
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
    required this.isBackGroundGreen,
    required this.bitterDandelion,
  }) : super(key: key);

  final bool isBackGroundGreen;
  final Color bitterDandelion;

  @override
  Widget build(BuildContext context) {
    return LoginSignupButton(
        text: LoginSignupName.login.getName(),
        onPressed: () {},
        backgroundColor: isBackGroundGreen
            ? bitterDandelion
            : LoginSignupColor.white.getValue(),
        foregroundColor: LoginSignupColor.black.getValue());
  }
}
