import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget with PreferredSizeWidget {
  final Widget leftWidget;
  final double preferredSizeHeight;
  final Widget? titleWidget;
  final List<Widget>? rightWidgetList;
  const CustomAppbarWidget({
    Key? key,
    required this.leftWidget,
    required this.rightWidgetList,
    required this.preferredSizeHeight,
    this.titleWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(preferredSizeHeight),
        child: AppBar(
          title: titleWidget,
          leadingWidth: MediaQuery.of(context).size.width / 3,
          leading: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
              child: leftWidget),
          actions: rightWidgetList,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(preferredSizeHeight);
}
