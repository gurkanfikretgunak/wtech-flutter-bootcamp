import 'package:flutter/material.dart';
import 'package:todoist_app/widgets/custom_methods.dart';

class CustomButtonWelcome extends StatefulWidget {
  const CustomButtonWelcome({
    Key? key,
    required this.widName,
    required this.color,
    this.icon,
    required this.text,
  }) : super(key: key);
  final Widget widName;
  final Color color;
  final IconData? icon;
  final String text;
  @override
  State<CustomButtonWelcome> createState() => _CustomButtonWelcomeState();
}

class _CustomButtonWelcomeState extends State<CustomButtonWelcome> {
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
            backgroundColor: MaterialStateProperty.all(widget.color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.text,
                style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
