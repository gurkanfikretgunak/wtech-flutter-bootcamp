import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/provider/sign_up_state.dart';
import 'package:provider/provider.dart';

import '../../core/provider/onboarding_load_widget_state.dart';
import '../email_textformfield_widget.dart';
import '../password_textformfield_widget.dart';

class WelcomeColumnWidget extends StatelessWidget {
  WelcomeColumnWidget({super.key});
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final signUpStateWithListen =
        Provider.of<SignUpState>(context, listen: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Welcome to Neo', style: Theme.of(context).textTheme.labelMedium),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
              'Create a commitment-free profile to explore financial products and rewards.'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: EmailTextFormFieldWidget(),
        ),
        PasswordTextFormFieldWidget(controller: _passwordController),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Password strength'),
              Text(
                signUpStateWithListen.passwordStatus,
                style: TextStyle(color: signUpStateWithListen.secondBar),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 6,
                color: signUpStateWithListen.firstBar,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 6,
                  color: signUpStateWithListen.secondBar,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 6,
                color: signUpStateWithListen.thirdBar,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
              signUpStateWithListen.passwordStatus != ''
                  ? 'Make your password even stronger by including more than 10 characters, numbers, symbols, upper and lowercase letters.'
                  : 'Passwords must be a minimum of 8 characters. Include one letter, and one number or symbol.',
              style: Theme.of(context).textTheme.bodySmall),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            child: Row(
              children: const [
                Icon(Icons.add_circle),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text('Add a promo code'),
                )
              ],
            ),
            onPressed: () {
              Provider.of<OnboardingLoadWidgetState>(context, listen: false)
                  .changePageIndex(2);
            },
          ),
        ),
      ],
    );
  }
}
