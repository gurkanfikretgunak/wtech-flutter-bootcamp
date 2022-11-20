import 'package:flutter/material.dart';

class NoSheetButton extends StatelessWidget {
  const NoSheetButton({
    Key? key,
    required this.text,
    required this.widName,
  }) : super(key: key);
  final String text;
  final String widName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, widName);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
