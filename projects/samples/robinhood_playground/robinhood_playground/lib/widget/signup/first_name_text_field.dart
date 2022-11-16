import 'package:flutter/material.dart';

class SignUpFirstNameTextField extends StatefulWidget {
  const SignUpFirstNameTextField({
    Key? key,
    required TextEditingController firsNameController,
    required FocusNode firstNameFocusNode,
  })  : _firsNameController = firsNameController,
        _firstNameFocusNode = firstNameFocusNode,
        super(key: key);

  final TextEditingController _firsNameController;
  final FocusNode _firstNameFocusNode;

  @override
  State<SignUpFirstNameTextField> createState() =>
      _SignUpFirstNameTextFieldState();
}

class _SignUpFirstNameTextFieldState extends State<SignUpFirstNameTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._firsNameController,
      focusNode: widget._firstNameFocusNode,
      cursorColor: Colors.black,
      keyboardType: TextInputType.name,
      autofocus: false,
      autofillHints: const [AutofillHints.name],
      textAlign: TextAlign.center,
      decoration: const InputDecoration(hintText: 'First Name'),
    );
  }
}
