import 'package:flutter/material.dart';

class LastNameTextField extends StatefulWidget {
  const LastNameTextField({
    Key? key,
    required TextEditingController lastNameController,
    required FocusNode lastNameFocusNode,
  })  : _lastNameController = lastNameController,
        _lastNameFocusNode = lastNameFocusNode,
        super(key: key);

  final TextEditingController _lastNameController;
  final FocusNode _lastNameFocusNode;

  @override
  State<LastNameTextField> createState() => _LastNameTextFieldState();
}

class _LastNameTextFieldState extends State<LastNameTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.name,
      autofocus: false,
      autofillHints: const [AutofillHints.name],
      textAlign: TextAlign.center,
      decoration: const InputDecoration(hintText: 'Last Name'),
      controller: widget._lastNameController,
      focusNode: widget._lastNameFocusNode,
    );
  }
}
