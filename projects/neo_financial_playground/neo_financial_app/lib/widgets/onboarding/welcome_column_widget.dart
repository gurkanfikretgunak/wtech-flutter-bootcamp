import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/provider/sign_up_state.dart';
import 'package:provider/provider.dart';
import '../../core/provider/onboarding_load_widget_state.dart';

class WelcomeColumnWidget extends StatelessWidget {
  const WelcomeColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signupState = Provider.of<SignUpState>(context, listen: false);

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
          //TODO: Form component will add
          child: TextField(
            onChanged: (value) => {signupState.setEmail(value)},
            decoration: const InputDecoration(
              labelText: "Email",
              fillColor: Colors.black12,
              filled: true,
            ),
          ),
        ),
        TextField(
          onChanged: (value) => {signupState.setPassword(value)},
          decoration: const InputDecoration(
            labelText: "Password",
            fillColor: Colors.black12,
            filled: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Password strength'),
              Text('Strong'),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 6,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 6,
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 6,
                color: Colors.green,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
              'Passwords must be a minimum of 8 characters. Include one letter, and one number or symbol.',
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
