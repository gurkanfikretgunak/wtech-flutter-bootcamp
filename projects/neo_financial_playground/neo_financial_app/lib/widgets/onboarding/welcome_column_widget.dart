import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/provider/sign_up_state.dart';
import 'package:provider/provider.dart';

import '../../core/provider/onboarding_load_widget_state.dart';

class WelcomeColumnWidget extends StatefulWidget {
  const WelcomeColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeColumnWidget> createState() => _WelcomeColumnWidgetState();
}

class _WelcomeColumnWidgetState extends State<WelcomeColumnWidget> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool isHidden = true;
  @override
  void initState() {
    emailController = TextEditingController(
        text: Provider.of<SignUpState>(context, listen: false).email);
    passwordController = TextEditingController(
        text: Provider.of<SignUpState>(context, listen: false).password);
    emailController.addListener(onListen);
    passwordController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    emailController.removeListener(onListen);
    passwordController.removeListener(onListen);
    super.dispose();
  }

  void onListen() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final signUpState = Provider.of<SignUpState>(context, listen: false);

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
          child: TextFormField(
            onChanged: ((value) {
              signUpState.setEmail(value);
              signUpState.controlEmail();
            }),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.black12,
              filled: true,
              suffixIcon: emailController.text.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        emailController.clear();
                        signUpState.setEmail('');
                      },
                    ),
            ),
            validator: (value) =>
                signUpState.emailStatus ? 'Please enter a valid email' : null,
          ),
        ),
        TextFormField(
          onChanged: ((value) {
            signUpState.setPassword(value);
            signUpState.controlPassword();
          }),
          obscureText: isHidden,
          keyboardType: TextInputType.visiblePassword,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: signUpState.secondBar),
            ),
            labelStyle: TextStyle(color: signUpState.secondBar),
            fillColor: Colors.black12,
            filled: true,
            suffixIcon: passwordController.text.isEmpty
                ? Container(width: 0)
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: isHidden
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        onPressed: () {
                          isHidden == true ? isHidden = false : isHidden = true;
                          onListen();
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.cancel),
                        onPressed: () {
                          passwordController.clear();
                          signUpState.setPassword('');
                        },
                      ),
                    ],
                  ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Password strength'),
              Text(
                signUpState.passwordStatus,
                style: TextStyle(color: signUpState.secondBar),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 6,
                color: signUpState.firstBar,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 6,
                  color: signUpState.secondBar,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 6,
                color: signUpState.thirdBar,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
              signUpState.passwordStatus != ''
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
