import 'authentication_custom_widget/terms_text.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_logo.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../widgets/button/button_libary.dart';

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
