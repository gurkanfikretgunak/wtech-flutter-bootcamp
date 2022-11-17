import 'package:flutter/material.dart';

class CustomInputDecoration extends StatefulWidget {
  const CustomInputDecoration({
    Key? key,
    required this.labelText,
    this.inputIcon,
    this.unInputIcon,
    this.controller,
  }) : super(key: key);
  final String labelText;
  final IconData? inputIcon;
  final IconData? unInputIcon;
  final TextEditingController? controller;

  @override
  State<CustomInputDecoration> createState() => _CustomInputDecorationState();
}

class _CustomInputDecorationState extends State<CustomInputDecoration> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 45,
      child: TextField(
        controller: widget.controller,
        obscureText: obscureText,
        autofocus: true,
        // keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
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
                : Icon(widget.inputIcon),
          ),
        ),
      ),
    );
  }
}
