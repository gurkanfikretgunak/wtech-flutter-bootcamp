import 'package:flutter/material.dart';

class GenerealButton extends StatelessWidget {
  const GenerealButton({
    super.key,
    this.foregroundColor = Colors.white,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: _ElevatedButtonPadding().vertical,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor),
        child: Text(text),
      ),
    );
  }
}

class _ElevatedButtonPadding {
  final EdgeInsets vertical = const EdgeInsets.symmetric(vertical: 15);
}

enum GeneralButtonColor { black, white, green }

extension GeneralButtonColorExtension on GeneralButtonColor {
  Color getColor() {
    switch (this) {
      case GeneralButtonColor.black:
        return Colors.black;
      case GeneralButtonColor.white:
        return Colors.white;
      case GeneralButtonColor.green:
        return const Color.fromARGB(255, 96, 196, 60);
    }
  }
}
