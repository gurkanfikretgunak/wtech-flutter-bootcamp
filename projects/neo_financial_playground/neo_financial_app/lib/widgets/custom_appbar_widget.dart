import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget {
  final Widget leftWidget;
  final List<Widget> rightWidgetList;
  const CustomAppbarWidget({
    Key? key,
    required this.leftWidget,
    required this.rightWidgetList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: MediaQuery.of(context).size.width / 3,
      leading: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
          child: leftWidget),
      actions: rightWidgetList,
    );
  }
}
