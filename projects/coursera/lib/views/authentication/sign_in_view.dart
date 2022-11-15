import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/views/authentication/sign_up_view.dart';
import 'package:coursera/views/authentication/authentication_custom_widget/terms_text.dart';
import 'package:coursera/views/home_view.dart';
import 'package:coursera/widgets/button/custom_button_elevated.dart';
import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/custom_logo.dart';
import 'package:coursera/widgets/custom_viewer_image.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});
  ConstantsClass constant = ConstantsClass.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(
          context: context,
          leading: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: context.horizontalPaddingLow,
              child: CustomTextButton(
                onPressed: () {},
                text: "Sign Up Later",
              ),
            ),
          ),
        ),
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
                child: Container(child: _buildLoginButtons(context)),
              ),
              Expanded(
                child: _buildCreateAccountTextButton(context),
              ),
              const Expanded(
                child: TermsText(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Align _buildCreateAccountTextButton(BuildContext context) {
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

  Wrap _buildLoginButtons(BuildContext context) {
    return Wrap(
      children: [
        CustomElevatedButton(
          borderSideColor: constant.appBlack,
          primary: constant.appWhite,
          textColor: constant.appBlack,
          iconWidget: Icon(
            Icons.apple,
            size: context.mediumValue,
          ),
          text: "Continue with Apple",
          onPressed: () {},
        ),
        CustomElevatedButton(
          borderSideColor: constant.appGreyDark,
          primary: constant.appWhite,
          textColor: constant.appGreyDark,
          iconWidget: CustomImageViewer(
            fit: BoxFit.contain,
            assetPath: "assets/icons/google.png",
            height: context.mediumValue,
          ),
          text: "Continue with Google",
          onPressed: () {},
        ),
        CustomElevatedButton(
          borderSideColor: constant.facebookLogoColor,
          primary: constant.appWhite,
          textColor: constant.facebookLogoColor,
          iconWidget: Icon(
            size: context.mediumValue,
            FontAwesomeIcons.facebook,
            color: constant.facebookLogoColor,
          ),
          text: "Continue with Facebook",
          onPressed: () {},
        ),
        const Divider(),
        CustomElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            );
          },
          text: "Log In with Email",
        ),
      ],
    );
  }
}
