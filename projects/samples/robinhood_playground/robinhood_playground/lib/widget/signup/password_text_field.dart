import 'package:flutter/material.dart';

class SignUpPasswordTextField extends StatefulWidget {
  const SignUpPasswordTextField({
    Key? key,
    required TextEditingController passwordController,
    required bool isVisible,
  }) : _passwordController = passwordController, _isVisible = isVisible, super(key: key);

  final TextEditingController _passwordController;
  final bool _isVisible;

  @override
  State<SignUpPasswordTextField> createState() => _SignUpPasswordTextFieldState();
}

class _SignUpPasswordTextFieldState extends State<SignUpPasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._passwordController,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      obscureText: widget._isVisible,
      autofillHints: const [AutofillHints.password],
      textAlign: TextAlign.center,
      decoration: const InputDecoration(hintText: 'Password'),
    );
  }
}
