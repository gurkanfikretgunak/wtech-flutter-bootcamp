import 'package:flutter/material.dart';

class CustomInputDecoration extends StatefulWidget {
  const CustomInputDecoration({
    Key? key,
    required this.labelText,
    this.inputIcon,
    this.unInputIcon,
    this.controller,
    required this.deneme,
  }) : super(key: key);
  final String labelText;
  final IconData? inputIcon;
  final IconData? unInputIcon;
  final TextEditingController? controller;
  final bool deneme;

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
                  : widget.controller!.text.isNotEmpty
                      ? _CustomClearSuffixIcon(
                          controller: widget.controller,
                        )
                      : SizedBox()),
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
