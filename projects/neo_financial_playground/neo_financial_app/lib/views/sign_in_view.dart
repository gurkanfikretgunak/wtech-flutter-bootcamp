import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/provider/user_state.dart';
import 'package:neo_financial_app/widgets/sign_up/email_textformfield_widget.dart';
import 'package:neo_financial_app/widgets/sign_up/password_textformfield_widget.dart';
import 'package:provider/provider.dart';

import '../core/data/constants/icon_constants.dart';
import '../core/data/constants/text_constants.dart';
import '../widgets/custom_elevated_button_widget.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: PaddingConstants.largeHorizontalPadding,
          child: IconButton(
            icon: const Icon(IconConstants.signInAppBarLeftIcon,
                color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: PaddingConstants.largeHorizontalPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(TextConstants.signInBottomTitleText,
                        style: Theme.of(context).textTheme.labelMedium),
                    Padding(
                      padding: PaddingConstants.largeVerticalPadding,
                      child: EmailTextFormFieldWidget(
                        controller: _emailController,
                      ),
                    ),
                    PasswordTextFormFieldWidget(
                      controller: _passwordController,
                    ),
                    const Spacer(),
                    CustomElevatedButtonWidget(
                      btnName: TextConstants.signInElevatedButtonText,
                      btnIcon: null,
                      function: () {
                        Provider.of<UserState>(context, listen: false)
                            .signIn(context);
                      },
                    ),
                    Padding(
                      padding: PaddingConstants.xLargeBottomPadding,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            //TODO: Password forget side will be create
                          },
                          child: const Text(
                            TextConstants.signInBottomText,
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
