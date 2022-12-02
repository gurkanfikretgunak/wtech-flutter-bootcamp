import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/provider/sign_up_state.dart';

class EmailTextFormFieldWidget extends StatelessWidget {
  EmailTextFormFieldWidget({super.key});

  final TextEditingController _controller = TextEditingController();
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
      controller: _controller,
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
                  _controller.clear();
                  signUpState.setEmail('');
                },
              ),
      ),
      validator: (value) =>
          signUpState.emailStatus ? 'Please enter a valid email' : null,
    );
  }
}
