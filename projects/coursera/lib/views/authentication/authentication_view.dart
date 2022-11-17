import 'package:coursera/views/authentication/authentication_custom_widget/terms_text.dart';
import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/custom_logo.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({
    super.key,
    required this.widget,
    this.appBar,
  });

  final Widget widget;
  final PreferredSizeWidget? appBar;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar ??
            CustomAppBar.customAppBar(
              context: context,
              leading: Align(
                alignment: Alignment.centerLeft,
                child: CustomTextButton(
                  onPressed: () {},
                  text: "Sign Up Later",
                ),
              ),
            ),
        body: Padding(
          padding: context.paddingMedium,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: context.dynamicHeight(0.80),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Logo(),
                  Expanded(child: widget),
                  const TermsText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
