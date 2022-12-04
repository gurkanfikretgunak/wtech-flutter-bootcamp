import 'package:flutter/material.dart';

import '../core/data/constants/padding_constants.dart';

class CustomInformationCardWidget extends StatelessWidget {
  final String body;
  final Text title;
  final double titleMargin;
  final Color color;
  final Widget button;
  final Widget? bottomRightWidget;
  final bool isCloseButtonActive;
  const CustomInformationCardWidget({
    Key? key,
    required this.title,
    required this.titleMargin,
    required this.body,
    required this.color,
    required this.button,
    required this.bottomRightWidget,
    required this.isCloseButtonActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingConstants.largeVerticalPadding,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: PaddingConstants.largePadding,
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
            padding: PaddingConstants.largeTopPadding,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: titleMargin),
                        child: title,
                      ),
                      Padding(
                        padding: PaddingConstants.mediumVerticalPadding,
                        child: Text(body),
                      ),
                      button
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: PaddingConstants.xLargeTopPadding,
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
