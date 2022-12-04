import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:neo_financial_app/core/provider/user_state.dart';
import 'package:provider/provider.dart';

import '../../core/provider/onboard_state.dart';
import 'email_textformfield_widget.dart';
import 'password_textformfield_widget.dart';

class SignUpHomeWidget extends StatelessWidget {
  SignUpHomeWidget({super.key});
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userStateWithListen = Provider.of<UserState>(context, listen: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(TextConstants.signUpHomeTitleText,
            style: Theme.of(context).textTheme.labelMedium),
        const Padding(
          padding: PaddingConstants.mediumVerticalPadding,
          child: Text(TextConstants.signUpHomeBodyText),
        ),
        Padding(
          padding: PaddingConstants.largeVerticalPadding,
          child: EmailTextFormFieldWidget(
            controller: _emailController,
          ),
        ),
        PasswordTextFormFieldWidget(controller: _passwordController),
        Padding(
          padding: PaddingConstants.largeVerticalPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(TextConstants.signUpHomePasswordControlLeftText),
              Text(
                userStateWithListen.passwordStatus,
                style: TextStyle(color: userStateWithListen.secondBar),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 6,
                color: userStateWithListen.firstBar,
              ),
            ),
            Expanded(
              child: Padding(
                padding: PaddingConstants.mediumHorizontalPadding,
                child: Container(
                  height: 6,
                  color: userStateWithListen.secondBar,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 6,
                color: userStateWithListen.thirdBar,
              ),
            ),
          ],
        ),
        Padding(
          padding: PaddingConstants.largeVerticalPadding,
          child: Text(
              userStateWithListen.passwordStatus.isNotEmpty
                  ? TextConstants.signUpHomePasswordErrorText
                  : TextConstants.signUpHomePasswordInformationText,
              style: Theme.of(context).textTheme.bodySmall),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            child: Row(
              children: const [
                Icon(IconConstants.signUpHomeTextButtonIcon),
                Padding(
                  padding: PaddingConstants.smallHorizontalPadding,
                  child: Text(TextConstants.signUpHomeTextButtonText),
                )
              ],
            ),
            onPressed: () {
              Provider.of<OnboardState>(context, listen: false)
                  .changePageIndex(2);
            },
          ),
        ),
      ],
    );
  }
}
