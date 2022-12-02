import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/provider/sign_up_state.dart';

class EmailTextFormFieldWidget extends StatelessWidget {
  const EmailTextFormFieldWidget({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final signUpState = Provider.of<SignUpState>(context, listen: false);
    final signUpStateWithListen =
        Provider.of<SignUpState>(context, listen: true);

    return TextFormField(
      onChanged: ((value) {
        signUpState.setEmail(value);
        signUpState.controlEmail();
      }),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.black12,
        filled: true,
        suffixIcon: signUpStateWithListen.email.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.cancel),
                onPressed: () {
                  controller.clear();
                  signUpState.setEmail('');
                },
              ),
      ),
      validator: (value) =>
          signUpState.emailStatus ? 'Please enter a valid email' : null,
    );
  }
}
