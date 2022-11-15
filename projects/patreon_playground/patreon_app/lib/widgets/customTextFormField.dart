import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textLabel,
    required this.obscure,
    required this.controller,
    this.valid,
    this.onTouch,
    this.textFieldInputType = TextInputType.text,
    required this.otoFocus,
  }) : super(key: key);
  final String? textLabel;
  final bool obscure;
  final TextEditingController controller;
  final String? Function(String?)? valid;
  final Function()? onTouch;
  final TextInputType? textFieldInputType;
  final bool otoFocus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        autofocus: otoFocus,
        keyboardType: textFieldInputType,
        onTap: onTouch,
        controller: controller,
        validator: valid,
        obscureText: obscure,
        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(color: Colors.red),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          labelText: textLabel,
        ),
      ),
    );
  }
}
