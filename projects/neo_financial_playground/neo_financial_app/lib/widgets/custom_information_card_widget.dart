import 'package:flutter/material.dart';

class CustomInformationCardWidget extends StatelessWidget {
  final String title, body;
  final Color color;
  final Widget button;
  final Widget? bottomRightWidget;
  final bool isCloseButtonActive;
  const CustomInformationCardWidget({
    Key? key,
    required this.title,
    required this.body,
    required this.color,
    required this.button,
    required this.bottomRightWidget,
    required this.isCloseButtonActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(children: [
          Align(
            alignment: Alignment.topRight,
            child: isCloseButtonActive
                ? TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                  )
                : null,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(body),
                      ),
                      button
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: bottomRightWidget,
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
