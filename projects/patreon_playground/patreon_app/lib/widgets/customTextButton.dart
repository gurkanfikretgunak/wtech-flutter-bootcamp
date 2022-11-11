import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.onPress,
    required this.disabledColor,
  }) : super(key: key);
  final String text;
  final Color buttonColor;
  final void Function()? onPress;
  final Color disabledColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 350,
              decoration: BoxDecoration(
                  //color: buttonColor,
                  borderRadius: (BorderRadius.circular(20))),
              child: TextButton(
                  style: TextButton.styleFrom(
                      disabledBackgroundColor: disabledColor,
                      backgroundColor: buttonColor,
                      shape: const StadiumBorder()),
                  onPressed: onPress,
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  ))),
        ));
  }
}
