import 'package:flutter/material.dart';

class BaseTitle extends StatelessWidget {
  const BaseTitle({
    Key? key,
  }) : super(key: key);
  final String text = 'There\'s Free Stock Waiting\n For You';

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
    );
  }
}
