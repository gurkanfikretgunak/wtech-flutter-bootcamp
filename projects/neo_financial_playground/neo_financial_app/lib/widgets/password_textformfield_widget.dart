import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/provider/sign_up_state.dart';

class PasswordTextFormFieldWidget extends StatelessWidget {
  const PasswordTextFormFieldWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final signUpState = Provider.of<SignUpState>(context, listen: false);
    final signUpStateWithListen =
        Provider.of<SignUpState>(context, listen: true);
    return TextFormField(
      onChanged: ((value) {
        signUpStateWithListen.setPassword(value);
        signUpState.controlPassword();
      }),
      obscureText: signUpStateWithListen.isHidden,
      keyboardType: TextInputType.visiblePassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Password',
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: signUpState.secondBar),
        ),
        labelStyle: TextStyle(color: signUpState.secondBar),
        fillColor: Colors.black12,
        filled: true,
        suffixIcon: signUpState.password.isEmpty
            ? Container(width: 0)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: signUpState.isHidden
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    onPressed: () {
                      signUpState.isHidden == true
                          ? signUpState.setIsHidden(false)
                          : signUpState.setIsHidden(true);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      controller.clear();
                      signUpState.setPassword('');
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
