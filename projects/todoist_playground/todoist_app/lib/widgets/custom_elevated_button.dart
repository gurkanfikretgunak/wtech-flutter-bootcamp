import 'package:flutter/material.dart';

import 'package:todoist_app/views/login_with_email_view.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({Key? key, required this.buttonTexts, required this.buttonColors, this.buttonIcons})
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
        onPressed: () {
          _settingModalBottomSheet(context);
        },
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

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.grey[50],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(25),
          topStart: Radius.circular(25),
        ),
      ),
      builder: (context) => Container(
          padding: const EdgeInsetsDirectional.only(
            start: 20,
            end: 20,
            bottom: 30,
            top: 8,
          ),
          child: const SizedBox(
            height: 600,
            child: LoginWithEmail(),
          )));
}
