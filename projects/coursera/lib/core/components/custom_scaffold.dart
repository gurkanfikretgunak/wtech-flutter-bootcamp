import 'package:coursera/core/components/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.isDrawer,
  });
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool? isDrawer;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: isDrawer != null ? const CustomDrawer() : const SizedBox(),
        appBar: appBar ?? AppBar(leadingWidth: context.highValue),
        backgroundColor: backgroundColor,
        bottomNavigationBar: bottomNavigationBar,
        body: Center(
          child: Padding(
            padding: context.horizontalPaddingMedium,
            child: body,
          ),
        ),
      ),
    );
  }
}
