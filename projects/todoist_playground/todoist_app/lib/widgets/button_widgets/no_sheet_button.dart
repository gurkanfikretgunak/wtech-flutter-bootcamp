import 'package:flutter/material.dart';

class NoSheetButton extends StatelessWidget {
  const NoSheetButton({
    Key? key,
    required this.widName,
    required this.text,
  }) : super(key: key);
  final Widget widName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => widName));
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
