import 'package:coursera/routes/custom_navigator.dart';
import 'package:coursera/views/authentication/authentication_view.dart';
import 'package:coursera/views/authentication/sign_in/sign_in_view_model.dart';
import 'package:coursera/widgets/button/custom_button_elevated.dart';
import 'package:coursera/widgets/custom_divider.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:coursera/widgets/text/custom_text_span.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return AuthenticationView(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          context.emptySizedHeightBoxLow,
          const CustomText(
            text:
                "Take the world's best courses online from top universities and industry partners.",
            maxLines: 2,
          ),
          context.emptySizedHeightBoxNormal,
          SizedBox(
            height: context.dynamicHeight(0.25),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              itemCount: SignInViewModel.buildButtonValue(context).length,
              itemBuilder: (context, index) {
                var listItem = SignInViewModel.buildButtonValue(context)[index];
                return CustomElevatedButton(
                  borderSideColor: listItem['borderSideColor']! as Color,
                  primary: listItem['primary']! as Color,
                  textColor: listItem['textColor']! as Color,
                  iconWidget: listItem['iconWidget']! as Widget,
                  text: listItem['text']! as String,
                  onPressed: listItem['onPressed']! as Function(),
                );
              },
            ),
          ),
          const CustomDivider(),
          CustomElevatedButton(
            onPressed: _loginWithEmail,
            text: "Log In with Email",
          ),
          InkWell(
            onTap: _navigationSignUpView,
            child: Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  children: [
                    CustomTextSpan().textSpan(
                      text: "New to Coursera?",
                    ),
                    CustomTextSpan().textSpan(
                      text: "  Create Account",
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ),
          ),
          context.emptySizedHeightBoxNormal,
        ],
      ),
    );
  }

  void _navigationSignUpView() {
    CustomNavigator.goToScreen(context, "/SignUpView");
  }

  void _loginWithEmail() {
    CustomNavigator.goToScreen(context, "/HomeView");
  }
}
