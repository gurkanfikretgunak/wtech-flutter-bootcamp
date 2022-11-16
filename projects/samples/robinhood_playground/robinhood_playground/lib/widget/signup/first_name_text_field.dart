

import 'package:flutter/material.dart';

class FirsNameTextField extends StatefulWidget {
  const FirsNameTextField({
    Key? key,
    required TextEditingController firsNameController,
    required FocusNode firstNameFocusNode,
  })  : _firsNameController = firsNameController,
        _firstNameFocusNode = firstNameFocusNode,
        super(key: key);

  final TextEditingController _firsNameController;
  final FocusNode _firstNameFocusNode;

  @override
  State<FirsNameTextField> createState() => _FirsNameTextFieldState();
}

class _FirsNameTextFieldState extends State<FirsNameTextField> {
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