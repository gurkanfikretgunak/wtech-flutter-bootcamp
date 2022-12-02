import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/provider/sign_up_state.dart';
import 'package:neo_financial_app/widgets/email_textformfield_widget.dart';
import 'package:neo_financial_app/widgets/password_textformfield_widget.dart';
import 'package:provider/provider.dart';

import '../widgets/onboarding/custom_elevated_button_widget.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});

  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome back',
                        style: Theme.of(context).textTheme.labelMedium),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: EmailTextFormFieldWidget(),
                    ),
                    PasswordTextFormFieldWidget(
                      controller: _passwordController,
                    ),
                    const Spacer(),
                    CustomElevatedButtonWidget(
                      btnName: 'Sign in',
                      btnIcon: null,
                      function: () {
                        Provider.of<SignUpState>(context, listen: false)
                            .signIn(context);
                      },
                    ),
                    Center(
                      child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: TextButton(
                              onPressed: () {
                                //Password forget side will be create
                              },
                              child: const Text(
                                'Need a password?',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          )),
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
