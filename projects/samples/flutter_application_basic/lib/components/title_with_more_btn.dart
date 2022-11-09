import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          const TitleWithCustomUnderline(text: title),
          const Spacer(),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: kPrimaryColor)))),
            onPressed: press,
            child: const Text(
              "Fazlası",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(right: kDefaultPadding / 4),
            height: 7,
            color: kPrimaryColor.withOpacity(0.2),
          ),
        )
      ]),
    );
  }
}
