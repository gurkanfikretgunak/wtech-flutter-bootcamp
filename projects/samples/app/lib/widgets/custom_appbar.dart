import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  final double appBarHeight;
  final Widget content;
  const CustomAppBar({super.key, this.appBarHeight = kToolbarHeight, required this.content});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Theme.of(context).brightness,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: widget.content,
          ),
          Positioned(
            top: 170,
            left: 0,
            height: 40,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 33),
              width: MediaQuery.of(context).size.width * 0.9,
              // height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
