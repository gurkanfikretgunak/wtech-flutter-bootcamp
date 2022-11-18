import 'package:flutter/material.dart';

class CustomSignUpInput extends StatefulWidget {
  const CustomSignUpInput({
    Key? key,
    required this.labelText,
    this.inputIcon,
    this.unInputIcon,
    this.controller,
    this.keyForm,
  }) : super(key: key);
  final String labelText;
  final IconData? inputIcon;
  final IconData? unInputIcon;
  final TextEditingController? controller;
  final GlobalKey<FormState>? keyForm;
  @override
  State<CustomSignUpInput> createState() => _CustomSignUpInputState();
}

class _CustomSignUpInputState extends State<CustomSignUpInput> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.keyForm,
      child: Container(
        color: Colors.white,
        height: 45,
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please fill in the blanks.';
            }
            return null;
          },
          controller: widget.controller,
          obscureText: obscureText,
          autofocus: true,
          // keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            errorStyle: const TextStyle(
              fontSize: 16.0,
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: Colors.grey[350],
              fontSize: 14,
            ),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.red,
              ),
            ),
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: obscureText
                    ? Icon(
                        widget.unInputIcon,
                        color: Colors.grey,
                      )
                    : Icon(widget.inputIcon)),
          ),
        ),
      ),
    );
  }
}
