import 'package:flutter/material.dart';

class CustomInputDecoration extends StatefulWidget {
  const CustomInputDecoration({
    Key? key,
    required this.labelText,
    this.inputIcon,
    this.unInputIcon,
    this.controller,
    required this.deneme,
    this.keyForm,
  }) : super(key: key);
  final String labelText;
  final IconData? inputIcon;
  final IconData? unInputIcon;
  final TextEditingController? controller;
  final bool deneme;
  final GlobalKey<FormState>? keyForm;
  @override
  State<CustomInputDecoration> createState() => _CustomInputDecorationState();
}

class _CustomInputDecorationState extends State<CustomInputDecoration> {
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
                  if (widget.deneme) {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  } else {
                    widget.controller!.clear();
                  }
                },
                child: widget.deneme
                    ? obscureText
                        ? Icon(
                            widget.unInputIcon,
                            color: Colors.grey,
                          )
                        : Icon(widget.inputIcon)
                    : _CustomClearSuffixIcon(
                        controller: widget.controller,
                      )),
          ),
        ),
      ),
    );
  }
}

class _CustomClearSuffixIcon extends StatelessWidget {
  const _CustomClearSuffixIcon({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.0, 0.0),
      children: [
        Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[350]),
        ),
        const Icon(
          Icons.clear,
          size: 30 * 0.4,
          color: Colors.white,
        )
      ],
    );
  }
}

extension InputValidation on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    // ignore: unnecessary_null_comparison
    return this != null;
  }
}
