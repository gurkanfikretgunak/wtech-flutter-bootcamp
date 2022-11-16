import 'package:flutter/material.dart';

class SignUpEmailTextField extends StatefulWidget {
  const SignUpEmailTextField({
    Key? key,
    required TextEditingController controller,
  }) : _controller = controller, super(key: key);

  final TextEditingController _controller;

  @override
  State<SignUpEmailTextField> createState() => _SignUpEmailTextFieldState();
}

class _SignUpEmailTextFieldState extends State<SignUpEmailTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._controller,
      cursorColor: Colors.black,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      autofillHints: const [AutofillHints.email],
      textAlign: TextAlign.center,
      decoration: const InputDecoration(hintText: 'Email'),
    );
  }
}