import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/button/button_libary.dart';
import '../../core/components/custom_app_bar.dart';
import '../../core/components/custom_logo.dart';
import '../../core/components/custom_scaffold.dart';
import 'authentication_custom_widget/terms_text.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({
    super.key,
    required this.widget,
    this.appBar,
    this.isTermsText,
  });

  final Widget widget;
  final PreferredSizeWidget? appBar;
  final bool? isTermsText;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
      body: SizedBox(
        height: context.dynamicHeight(0.80),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            Expanded(child: widget),
            isTermsText ?? true ? const TermsText() : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
