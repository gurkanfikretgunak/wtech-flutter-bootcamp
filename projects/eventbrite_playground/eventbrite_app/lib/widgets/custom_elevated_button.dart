import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
              ),
              child: Text(
                text,
                style: textStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
