import 'package:flutter/material.dart';
import 'package:todoist_app/constants/custom_constants.dart';

import 'custom_methods.dart';

class CustomBlackButton extends StatefulWidget {
  const CustomBlackButton({Key? key, required this.widName}) : super(key: key);
  final Widget widName;

  @override
  State<CustomBlackButton> createState() => _CustomBlackButtonState();
}

class _CustomBlackButtonState extends State<CustomBlackButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          CustomMethods.settingModalBottomSheet(context, widget.widName);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.apple_outlined),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                CustomTextConstants.buttonTextApple,
                style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
