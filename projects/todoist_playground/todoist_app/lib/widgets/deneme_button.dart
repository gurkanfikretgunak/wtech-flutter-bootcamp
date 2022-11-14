import 'package:flutter/material.dart';

class ElevatedButtonC extends StatefulWidget {
  const ElevatedButtonC(
      {Key? key,
      required this.buttonTexts,
      required this.buttonColors,
      this.buttonIcons,
      required this.widName,
      this.controller})
      : super(key: key);
  final String buttonTexts;
  final Color? buttonColors;
  final IconData? buttonIcons;
  final Widget widName;
  final TextEditingController? controller;

  @override
  State<ElevatedButtonC> createState() => _ElevatedButtonCState();
}

class _ElevatedButtonCState extends State<ElevatedButtonC> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          _settingModalBottomSheet(context, widget.widName);
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

void _settingModalBottomSheet(context, Widget wid) {
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
          height: 600,
          padding: const EdgeInsetsDirectional.only(
            start: 20,
            end: 20,
            bottom: 30,
            top: 8,
          ),
          child: wid));
}
