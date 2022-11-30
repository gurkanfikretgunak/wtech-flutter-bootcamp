

import 'package:flutter/material.dart';

class MidPadding extends StatelessWidget {
  const MidPadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(top: 20));
  }
}

class TopPadding extends StatelessWidget {
  const TopPadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(top: 50));
  }
}   