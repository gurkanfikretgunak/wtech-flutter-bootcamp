import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton(
      {Key? key, required this.buttonTexts, required this.buttonColors, required this.buttonIcons})
      : super(key: key);
  final String buttonTexts;
  final Color? buttonColors;
  final IconData? buttonIcons;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.buttonColors),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.buttonIcons),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.buttonTexts,
                style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
