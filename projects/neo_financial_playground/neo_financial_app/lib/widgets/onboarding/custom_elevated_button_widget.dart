import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    Key? key,
    required this.btnName,
    required this.btnIcon,
    required this.function,
  }) : super(key: key);

  final String btnName;
  final IconData? btnIcon;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(btnName),
          Padding(
            padding: btnIcon != null
                ? const EdgeInsets.only(left: 5.0)
                : EdgeInsets.zero,
            child: btnIcon != null ? Icon(btnIcon) : null,
          )
        ]),
      ),
    );
  }
}
