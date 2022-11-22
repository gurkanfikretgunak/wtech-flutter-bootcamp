import '../../../../core/init/routes/custom_navigator.dart';
import '../../authentication_view.dart';
import 'sign_in_with_organization_view_model.dart';
import '../../../../core/components/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/button/button_libary.dart';
import '../../../../core/components/text/text_libary.dart';

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
        children: [
          const Spacer(),
          const Expanded(
            child: Center(
              child: CustomText(
                textAlign: TextAlign.center,
                text:
                    "Take the world's best courses online from top universities and industry partners.",
                maxLines: 2,
              ),
            ),
          ),
          context.emptySizedHeightBoxNormal,
          Flexible(
            flex: 5,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              itemCount:
                  SignInWithOrganizationViewModel.buildButtonValue(context)
                      .length,
              itemBuilder: (context, index) {
                var listItem = SignInWithOrganizationViewModel.buildButtonValue(
                    context)[index];
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
          const Expanded(child: CustomDivider()),
          Flexible(
            flex: 2,
            child: CustomElevatedButton(
              onPressed: _loginWithEmail,
              text: "Log In with Email",
            ),
          ),
          context.emptySizedHeightBoxLow,
          Expanded(
            child: InkWell(
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
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }

  void _navigationSignUpView() {
    CustomNavigator.goToScreen(context, "/SignUpView");
  }

  void _loginWithEmail() {
    CustomNavigator.goToScreen(context, "/SignInWithEmail");
  }
}
