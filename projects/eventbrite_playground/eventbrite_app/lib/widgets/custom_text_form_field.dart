import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final bool? obscureText;
  final String? initialValue;
  final Color? textColor;
  final bool? enabled;
  final TextInputType? keyboardType;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.obscureText,
    this.initialValue,
    this.enabled,
    this.keyboardType,
    this.floatingLabelBehavior,
    this.suffixIcon,
    this.textColor,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: TextStyle(color: textColor),
      initialValue: initialValue,
      enabled: enabled,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        floatingLabelBehavior:
            floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        suffixIcon: suffixIcon,
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
      ),
    );
  }
}
