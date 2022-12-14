import 'custom_app_bar.dart';
import 'text/custom_auto_size_text.dart';

import 'custom_drawer.dart';
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
    this.appBarTitle,
  });
  final Widget body;
  final PreferredSizeWidget? appBar;
  final String? appBarTitle;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool? isDrawer;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar ??
            AppBar(automaticallyImplyLeading: false, toolbarHeight: 35),
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
